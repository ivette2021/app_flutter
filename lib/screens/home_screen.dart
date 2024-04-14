import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(
      {super.key}); //constructor, el key nos sirve parta identificar el widget dentro del contexto

  @override
  Widget build(BuildContext context) {
    //es como el f12 del navegador
    return Scaffold(
        //esto prepara mi sitio es el fondo blanco
        appBar: AppBar(
          //funciona sin const
          backgroundColor: Colors.teal.shade400,
          title: const Text('CounterApp'),
          elevation: 30.0,
        ),
        backgroundColor: Colors.indigo.shade900,
        body: const Center(
          child: Column(
            children: <Widget>[
              Text('primera Linea'),
              Text('Segunda Linea'),
            ],
          ),
        ));
  }
}
