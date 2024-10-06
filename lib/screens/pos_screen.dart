import 'package:flutter/material.dart';
import 'package:aenzbi_app_flutter/models/car.dart';
import 'package:aenzbi_app_flutter/services/firestore_service.dart';

class POSScreen extends StatelessWidget {
  final FirestoreService _firestoreService = FirestoreService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Showroom POS'),
      ),
      body: StreamBuilder<List<Car>>(
        stream: _firestoreService.getCars(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          List<Car> cars = snapshot.data!;
          return ListView.builder(
            itemCount: cars.length,
            itemBuilder: (context, index) {
              Car car = cars[index];
              return ListTile(
                title: Text('${car.brand} ${car.model}'),
                subtitle: Text('Price: $${car.price}'),
                trailing: ElevatedButton(
                  onPressed: () {
                    _showSaleDialog(context, car);
                  },
                  child: Text('Sell'),
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _showSaleDialog(BuildContext context, Car car) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Confirm Sale'),
          content: Text('Confirm sale of ${car.brand} ${car.model} for $${car.price}?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Sale sale = Sale(carId: car.id, amount: car.price, date: DateTime.now());
                _firestoreService.recordSale(sale);
                Navigator.pop(context);
              },
              child: Text('Confirm'),
            ),
          ],
        );
      },
    );
  }
}
