import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(
      {super.key}); //constructor, el key nos sirve parta identificar el widget dentro del contexto

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('HomeScreen'),
    );
  }
}
