import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //constructor, el key nos sirve parta identificar el widget dentro del contexto

  int counter = 1;

  @override
  Widget build(BuildContext context) {
    //es como el f12 del navegadoryoutube

    const fontSize30 = TextStyle(
        fontSize: 30,
        color: Colors
            .white); //se creo una varibale para la fuente, para reutilizar

    return Scaffold(
      //esto prepara mi sitio es el fondo blanco
      appBar: AppBar(
        //funciona sin const
        backgroundColor: Colors.teal.shade400,
        title: const Text('CounterScreen'),
        elevation: 30.0,
      ),
      backgroundColor: Colors.indigo.shade900,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //centrado en todos lados
          children: <Widget>[
            const Text(
              'Contador',
              style: TextStyle(fontSize: 30, color: Colors.amber),
            ),
            const Text(
              'Numero de Clicks:',
              style: fontSize30, //llamamos la variable
            ),
            Text(
              '$counter',
              style: TextStyle(
                  fontSize: 20, color: Color.fromARGB(255, 255, 98, 140)),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,//si no quieres usar el sizedBox este funciona muy bien
        children: [
          FloatingActionButton(
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.indigo,
            ), //Icon es un widget especializado en mostrar iconos
            onPressed: () {
              counter--;
              setState(() {
                //sirve para volver a redibujar el widget
              });
            },
          ),

          const SizedBox(
            width: 30,
          ), //este widget se usa para separar o hacer figuras geometricas y puede ser invisible
          FloatingActionButton(
            child: const Icon(
              Icons.restart_alt_rounded,
              color: Colors.indigo,
            ), //Icon es un widget especializado en mostrar iconos
            onPressed: () {
              counter = 0;
              setState(() {
                //sirve para volver a redibujar el widget
              });
            },
          ),
          const SizedBox(
            width: 30,
          ),
          FloatingActionButton(
            child: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.indigo,
            ), //Icon es un widget especializado en mostrar iconos
            onPressed: () {
              counter++;
              setState(() {
                //sirve para volver a redibujar el widget
              });
            },
          ),
        ],
      ),
    );
  }
}
