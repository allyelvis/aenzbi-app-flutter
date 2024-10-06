import 'package:flutter/material.dart';
import 'package:aenzbi_app_flutter/models/car.dart';
import 'package:aenzbi_app_flutter/services/firestore_service.dart';

class InventoryScreen extends StatelessWidget {
  final FirestoreService _firestoreService = FirestoreService();
  final TextEditingController _brandController = TextEditingController();
  final TextEditingController _modelController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Inventory'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _brandController,
              decoration: InputDecoration(labelText: 'Brand'),
            ),
            TextField(
              controller: _modelController,
              decoration: InputDecoration(labelText: 'Model'),
            ),
            TextField(
              controller: _priceController,
              decoration: InputDecoration(labelText: 'Price'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Car car = Car(
                  id: '',
                  brand: _brandController.text,
                  model: _modelController.text,
                  price: double.parse(_priceController.text),
                  description: 'New car',
                );
                _firestoreService.addCar(car);
                _brandController.clear();
                _modelController.clear();
                _priceController.clear();
              },
              child: Text('Add Car'),
            ),
          ],
        ),
      ),
    );
  }
}
