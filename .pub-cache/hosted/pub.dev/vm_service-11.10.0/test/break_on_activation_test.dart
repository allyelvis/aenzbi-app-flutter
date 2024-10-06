// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:vm_service/vm_service.dart';

import 'package:test/test.dart';

import 'common/test_helper.dart';

Function() genRepeater(value) {
  return () => print(value);
}

Function({Object? x, Object? y}) genRepeaterNamed(value) {
  return ({x, y}) => print(value);
}

var r1;
var r2;
var r3;

var r1_named;
var r2_named;
var r3_named;

void testeeSetup() {
  // These closures have the same function.
  r1 = genRepeater('r1');
  r2 = genRepeater('r2');
  r3 = genRepeater('r3');

  // These closures have the same function.
  r1_named = genRepeaterNamed('r1_named');
  r2_named = genRepeaterNamed('r2_named');
  r3_named = genRepeaterNamed('r3_named');
}

void testeeDo() {
  r1();
  r2();
  r3();
}

void testeeDoNamed() {
  r1_named(y: 'Not a closure', x: 'Not a closure');
  r2_named(y: 'Not a closure', x: 'Not a closure');
  r3_named(y: 'Not a closure', x: 'Not a closure');
}

// TODO(bkonyi): add this to the protocol spec.
Future<Breakpoint> breakOnActivation({
  required VmService service,
  required String isolateId,
  required String objectId,
}) async =>
    await service.callMethod(
      '_addBreakpointAtActivation',
      isolateId: isolateId,
      args: {
        'objectId': objectId,
      },
    ) as Breakpoint;

final tests = <IsolateTest>[
  (VmService service, IsolateRef isolateRef) async {
    final isolateId = isolateRef.id!;
    final isolate = await service.getIsolate(isolateId);
    final rootLib =
        await service.getObject(isolateId, isolate.rootLib!.id!) as Library;

    var breaksHit = 0;

    final sub = service.onDebugEvent.listen((event) async {
      if (event.kind == EventKind.kPauseBreakpoint) {
        print('Hit breakpoint ${event.breakpoint}');
        breaksHit++;
        await service.resume(isolateId);
      }
    });
    await service.streamListen(EventStreams.kDebug);

    Future<InstanceRef> valueOfField(String name) async {
      final field = rootLib.variables!.singleWhere((v) => v.name == name);
      return ((await service.getObject(isolateId, field.id!)) as Field)
          .staticValue;
    }

    var r1Ref = await valueOfField('r1');
    final bpt1 = await breakOnActivation(
      service: service,
      isolateId: isolateId,
      objectId: r1Ref.id!,
    );

    print("Added breakpoint $bpt1");
    expect(breaksHit, equals(0));

    r1Ref = await valueOfField('r1');
    // TODO(bkonyi):
    //expect(r1Ref.activationBreakpoint, equals(bpt1));
    print("testeeDo()");
    var res = await service.evaluate(isolateId, rootLib.id!, "testeeDo()");
    print('testeedone');
    print(res);
    expect(res is InstanceRef, isTrue); // Not error.
    expect(breaksHit, equals(1));

    await service.removeBreakpoint(isolateId, bpt1.id!);
    print("Removed breakpoint $bpt1");
    print("testeeDo()");
    r1Ref = await valueOfField('r1');
    // TODO(bkonyi):
    //expect(r1Ref.activationBreakpoint, equals(null));
    res = await service.evaluate(isolateId, rootLib.id!, "testeeDo()");
    expect(res is InstanceRef, isTrue); // Not error.
    expect(breaksHit, equals(1));

    await service.streamCancel(EventStreams.kDebug);
    await sub.cancel();
  },
  (VmService service, IsolateRef isolateRef) async {
    final isolateId = isolateRef.id!;
    final isolate = await service.getIsolate(isolateId);
    final rootLib =
        await service.getObject(isolateId, isolate.rootLib!.id!) as Library;
    final rootLibId = rootLib.id!;

    var breaksHit = 0;

    final sub = service.onDebugEvent.listen((event) async {
      if (event.kind == EventKind.kPauseBreakpoint) {
        print('Hit breakpoint ${event.breakpoint}');
        breaksHit++;
        await service.resume(isolateId);
      }
    });
    await service.streamListen(EventStreams.kDebug);

    Future<InstanceRef> valueOfField(String name) async {
      final field = rootLib.variables!.singleWhere((v) => v.name == name);
      return ((await service.getObject(isolateId, field.id!)) as Field)
          .staticValue;
    }

    var r1Ref = await valueOfField('r1_named');

    var bpt1 = await breakOnActivation(
      service: service,
      isolateId: isolateId,
      objectId: r1Ref.id!,
    );
    print("Added breakpoint $bpt1");
    expect(breaksHit, equals(0));
    // TODO(bkonyi):
    // expect(r1Ref.activationBreakpoint, equals(bpt1));
    print("testeeDoNamed()");
    var res = await service.evaluate(isolateId, rootLibId, "testeeDoNamed()");
    expect(res is InstanceRef, isTrue); // Not error.
    expect(breaksHit, equals(1));

    await service.removeBreakpoint(isolateId, bpt1.id!);
    print("Removed breakpoint $bpt1");
    var r1 = await service.getObject(isolateId, r1Ref.id!) as Instance;
    // TODO(bkonyi):
    //expect(r1.activationBreakpoint, equals(null));
    print("testeeDoNamed()");
    res = await service.evaluate(isolateId, rootLibId, "testeeDoNamed()");
    expect(res is InstanceRef, isTrue); // Not error.
    expect(breaksHit, equals(1));

    await service.streamCancel(EventStreams.kDebug);
    await sub.cancel();
  },
  (VmService service, IsolateRef isolateRef) async {
    final isolateId = isolateRef.id!;
    final isolate = await service.getIsolate(isolateId);
    final rootLib =
        await service.getObject(isolateId, isolate.rootLib!.id!) as Library;
    final rootLibId = rootLib.id!;

    var breaksHit = 0;

    final sub = service.onDebugEvent.listen((event) async {
      if (event.kind == EventKind.kPauseBreakpoint) {
        print('Hit breakpoint ${event.breakpoint}');
        breaksHit++;
        await service.resume(isolateId);
      }
    });
    await service.streamListen(EventStreams.kDebug);

    Future<InstanceRef> valueOfField(String name) async {
      final field = rootLib.variables!.singleWhere((v) => v.name == name);
      return ((await service.getObject(isolateId, field.id!)) as Field)
          .staticValue;
    }

    var r1Ref = await valueOfField('r1');
    var r2Ref = await valueOfField('r2');

    var bpt1 = await breakOnActivation(
      service: service,
      isolateId: isolateId,
      objectId: r1Ref.id!,
    );

    print("Added breakpoint $bpt1");
    expect(breaksHit, equals(0));
    var r1 = await service.getObject(isolateId, r1Ref.id!) as Instance;

    // TODO(bkonyi):
    // expect(r1Ref.activationBreakpoint, equals(bpt1));
    print("testeeDo()");
    var res = await service.evaluate(isolateId, rootLibId, 'testeeDo()');
    expect(res is InstanceRef, isTrue); // Not error.
    expect(breaksHit, equals(1));

    var bpt2 = await breakOnActivation(
      service: service,
      isolateId: isolateId,
      objectId: r2Ref.id!,
    );
    print("Added breakpoint $bpt2");
    expect(breaksHit, equals(1));
    var r2 = await service.getObject(isolateId, r1Ref.id!) as Instance;

    // TODO(bkonyi):
    // expect(r2Ref.activationBreakpoint, equals(bpt2));
    print("testeeDo()");
    res = await service.evaluate(isolateId, rootLibId, 'testeeDo()');
    expect(res is InstanceRef, isTrue); // Not error.
    expect(breaksHit, equals(3));

    await service.removeBreakpoint(isolateId, bpt1.id!);
    print("Removed breakpoint $bpt1");
    r1 = await service.getObject(isolateId, r1Ref.id!) as Instance;

    // TODO(bkonyi):
    // expect(r1Ref.activationBreakpoint, equals(null));
    print("testeeDo()");
    res = await service.evaluate(isolateId, rootLibId, 'testeeDo()');
    expect(res is InstanceRef, isTrue); // Not error.
    expect(breaksHit, equals(4));

    await service.removeBreakpoint(isolateId, bpt2.id!);
    print("Removed breakpoint $bpt2");
    r2 = await service.getObject(isolateId, r1Ref.id!) as Instance;

    // TODO(bkonyi):
    // expect(r2Ref.activationBreakpoint, equals(null));
    print("testeeDo()");
    res = await service.evaluate(isolateId, rootLibId, 'testeeDo()');
    expect(res is InstanceRef, isTrue); // Not error.
    expect(breaksHit, equals(4));

    await service.streamCancel(EventStreams.kDebug);
    await sub.cancel();
  },
];

void main(args) => runIsolateTests(
      args,
      tests,
      'break_on_activation_test.dart',
      testeeBefore: testeeSetup,
    );
