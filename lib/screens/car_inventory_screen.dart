import 'package:flutter/material.dart';
import '../models/car.dart';
import '../services/car_service.dart';
import '../widgets/car_item.dart';

class CarInventoryScreen extends StatelessWidget {
  final CarService carService = CarService();

  @override
  Widget build(BuildContext context) {
    final List<Car> cars = carService.getCars();

    return Scaffold(
      appBar: AppBar(
        title: Text('Car Showroom Inventory'),
      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (ctx, index) {
          return CarItem(car: cars[index]);
        },
      ),
    );
  }
}
