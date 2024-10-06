import 'package:flutter/material.dart';
import 'product_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aenzbi POS'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('View Products'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductListScreen()),
            );
          },
        ),
      ),
    );
  }
}
