import 'package:app_flutter/screens/counter_screen.dart';
import 'package:flutter/material.dart';
//import 'package:app_flutter/screens/home_screen.dart';

void main() {
  runApp(const MyApp()); //colocA CONST EN El widget
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // constructir

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterScreen()); //importan la clase
  }
}
