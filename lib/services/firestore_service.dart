import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:aenzbi_app_flutter/models/car.dart';
import 'package:aenzbi_app_flutter/models/sale.dart';

class FirestoreService {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<Car>> getCars() {
    return _db.collection('cars').snapshots().map((snapshot) =>
      snapshot.docs.map((doc) => Car.fromMap(doc.data(), doc.id)).toList()
    );
  }

  Future<void> addCar(Car car) {
    return _db.collection('cars').add(car.toMap());
  }

  Future<void> updateCar(Car car) {
    return _db.collection('cars').doc(car.id).update(car.toMap());
  }

  Future<void> recordSale(Sale sale) {
    return _db.collection('sales').add(sale.toMap());
  }

  Stream<List<Sale>> getSales() {
    return _db.collection('sales').snapshots().map((snapshot) =>
      snapshot.docs.map((doc) => Sale.fromMap(doc.data(), doc.id)).toList()
    );
  }
}
