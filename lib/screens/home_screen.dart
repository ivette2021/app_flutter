import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(
      {super.key}); //constructor, el key nos sirve parta identificar el widget dentro del contexto

  @override
  Widget build(BuildContext context) {
    //es como el f12 del navegador
    return const Scaffold(
        //esto prepara mi sitio es el fondo blanco
        backgroundColor: Colors.indigo,
        body: Center(
          child: Text('HomeScreen'),
        ));
  }
}
