import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart'; //importamos el paquete de google fonts


/*
He decidido hacer el primer desafía de la web, el de dibujar un helipuerto
*/ 


class Ejercicio9 extends StatelessWidget {
  const Ejercicio9({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio 9', style: GoogleFonts.lato()),
      ),
      body: Center(
        child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.blue,
            width: 7
          ),
        ),
        alignment: Alignment.center,
        width: 300,
        height: 300,
        child: Text(" H ", style: TextStyle(fontSize: 200, color: Colors.green),),
      ),
      ),
    );
  }
}
