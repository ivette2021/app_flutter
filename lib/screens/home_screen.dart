import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(
      {super.key}); //constructor, el key nos sirve parta identificar el widget dentro del contexto

  @override
  Widget build(BuildContext context) {
    //es como el f12 del navegador
    const fontSize30 = TextStyle(
        fontSize: 30,
        color: Colors
            .white); //se creo una varibale para la fuente, para reutilizar

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
            mainAxisAlignment:
                MainAxisAlignment.center, //centrado en todos lados
            children: <Widget>[
              Text(
                'Primera Linea',
                style: TextStyle(fontSize: 30, color: Colors.amber),
              ),
              Text(
                'Primera Linea',
                style: fontSize30, //llamamos la variable
              ),
              Text(
                'Segunda Linea',
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 255, 98, 140)),
              ),
            ],
          ),
        ));
  }
}
