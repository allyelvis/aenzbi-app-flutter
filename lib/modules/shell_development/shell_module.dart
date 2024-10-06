import 'package:flutter/material.dart';
import 'shell_controller.dart';

class ShellModule extends StatelessWidget {
  final ShellController _controller = ShellController();
  final String command = "ls -la"; // Example command

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Shell Development Module',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(_controller.runCommand(command)),
        ],
      ),
    );
  }
}
