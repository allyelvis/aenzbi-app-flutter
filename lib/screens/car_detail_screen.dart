import 'package:flutter/material.dart';
import '../models/car.dart';

class CarDetailScreen extends StatelessWidget {
  final Car car;

  CarDetailScreen(this.car);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${car.brand} ${car.model}'),
      ),
      body: Column(
        children: [
          Image.asset(car.imageUrl),
          SizedBox(height: 20),
          Text(
            '${car.brand} ${car.model}',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Price: $${car.price}',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(car.description),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Implement booking or purchase action
            },
            child: Text('Book Now'),
          ),
        ],
      ),
    );
  }
}
