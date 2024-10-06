import 'shell_service.dart';

class ShellController {
  final ShellService _service = ShellService();

  String runCommand(String command) {
    return _service.executeCommand(command);
  }
}
