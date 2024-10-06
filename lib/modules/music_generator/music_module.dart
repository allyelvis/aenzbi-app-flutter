import 'package:flutter/material.dart';
import 'music_controller.dart';

class MusicModule extends StatelessWidget {
  final MusicController _controller = MusicController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Music Generator Module',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(_controller.createMusic()),
        ],
      ),
    );
  }
}
