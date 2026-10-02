import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart'; //importamos el paquete de google fonts

class Ejercicio4 extends StatelessWidget {
  const Ejercicio4({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio 4', style: GoogleFonts.lato()),
      ),
      body: Center(
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const <Widget>[
        Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 30.0,
        ),
        Icon(
            Icons.beach_access,
            color:  Color.fromARGB(255, 61, 30, 233),
            size: 30.0,
        ),
        Icon(
            Icons.sunny,
            color:  Color.fromARGB(255, 233, 199, 30),
            size: 30.0,
        ),
        Icon(
            Icons.thumb_up,
            color:  Color.fromARGB(255, 30, 233, 206),
            size: 30.0,
        ),
        Icon(
            Icons.fire_truck,
            color:  Color.fromARGB(255, 233, 54, 30),
            size: 30.0,
        ),
        ],
      ),
      ),
    );
  }
}