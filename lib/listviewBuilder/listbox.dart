import 'package:flutter/material.dart';

class ListBox extends StatelessWidget {
  final String child;

  ListBox({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 200,
        color: Colors.deepPurple[200],
        child: Center(
            child: Text(
          child,
          style: const TextStyle(fontSize: 16, color: Colors.black54),
        )),
      ),
    );
  }
}
