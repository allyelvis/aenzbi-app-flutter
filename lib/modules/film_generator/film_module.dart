import 'package:flutter/material.dart';
import 'film_controller.dart';

class FilmModule extends StatelessWidget {
  final FilmController _controller = FilmController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Film Generator Module',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(_controller.produceFilm()),
        ],
      ),
    );
  }
}
