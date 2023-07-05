import 'package:flutter/material.dart';
import './start_screen.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(31, 73, 21, 243),
              Color.fromARGB(221, 114, 36, 203),
            ], begin: Alignment.topCenter, end: Alignment.bottomRight),
          ),
          child: const StartScreen()),
    ),
  ));
}
