import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital Management System'),
      ),
      body: Center(
        child: Text('Welcome to the Medical Hospital App!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Future navigation logic will go here
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
