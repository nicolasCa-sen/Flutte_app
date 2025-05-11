import 'package:flutter/material.dart';
import 'widget001.dart';

void main() {
  runApp(const MyApp());
}

class MiPrimeraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Mi Primera App Flutter')),
        body: Center(child: Text('¡Hola, mundo!')),
      ),
    );
  }
}
