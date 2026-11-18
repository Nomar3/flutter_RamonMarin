import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

import 'screens.dart';

void main() {
  runApp(const RandomColors());
}


class RandomColors extends StatefulWidget {
  const RandomColors({super.key});


  @override
  State<RandomColors> createState() => _RandomColors();
}


class _RandomColors extends State<RandomColors> {
  bool juegoTerminado = false;//para establecer cuando acaba
  int points = 0;
  late String randomName;
  late Color randomColor;
  var colorNames = ['azul', 'verde', 'naranja'];
  var colorHex = [
    const Color(0xFF0000FF),
    const Color(0xFF00FF00),
    const Color(0xFFFF914D),
  ];


  @override
  void initState() {
    super.initState();
    getRandomColor();
    getRandomName();
    timer();
  }


//el juego necesita un temporizador que cuente un tiempo de juego
//se puede hace con variables timer y cancelandolos
//poner una contante que se reduzca cada segundo y cuando llegue a 0, se acabe el juego
  void timer() {
    Timer(const Duration(milliseconds: 15000), () {
      Timer.periodic(const Duration(milliseconds: 1000), (timer) {
        getRandomColor();
        getRandomName();
        setState(() {});
       });
    });
    
    //juegoTerminado = true;
  }


  @override
Widget build(BuildContext context) {

  Widget contenidoJuego;
  //primero la pantalla final:
  if (juegoTerminado==true) {
    // Si el juego ha terminado, guardamos el texto de fin
    contenidoJuego = Text(
      '¡Juego terminado!\nPuntuación final: $points',
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.blueAccent,
      ),
    );
  } else {
    //modo normal, el juego en activo:
    contenidoJuego = GestureDetector(
      onTap: () {
        onGiftTap(randomName, randomColor);
      },
      child: Column(
        children: [
          Container(width: 120, color: randomColor, height: 120),
          const SizedBox(height: 10),
          Text(
            randomName,
            style: TextStyle(
              color: randomColor,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Ejercicio 12"),
      ),
      drawer: const MenuLateral(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Puntos: $points',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Center(
            //colocamos la variable aqui
            child: contenidoJuego,
          ),
        ],
      ),
    ),
  );
}
void getRandomColor() {
    Random random = Random();
    int randomNumber = random.nextInt(3);
    randomColor = colorHex[randomNumber];
  }


  void getRandomName() {
    Random random = Random();
    int randomNumber = random.nextInt(3);
    randomName = colorNames[randomNumber];
  }


  String hexToStringConverter(Color hexColor) {
    if (hexColor == const Color(0xFF0000FF)) {
      return 'azul';
    } else if (hexColor == const Color(0xFF00FF00)) {
      return 'verde';
    } else {
      return 'naranja';
    }
  }


  void onGiftTap(String name, Color color) {
    var colorToString = hexToStringConverter(color);
    if (name == colorToString) {
      points++;
    } else {
      points--;
    }
    setState(() {});
  }
}
