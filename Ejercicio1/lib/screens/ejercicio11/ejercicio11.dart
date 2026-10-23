import 'package:flutter/material.dart';
import '../menu_lateral.dart';
import 'biografia.dart';
import 'cabecera.dart';
import 'historias.dart';
import 'botones_seguir.dart';


import 'package:google_fonts/google_fonts.dart'; //importamos el paquete de google fonts

class Ejercicio11 extends StatelessWidget {
  const Ejercicio11({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio 11', style: GoogleFonts.lato()),
      ),
      drawer: const MenuLateral(),
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Cabecera(),

          Biografia(),
          SizedBox(height: 10),
          BotonesSeguir(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
            height: 100,
            width: double.infinity,
            child: Historias(),
          ),
          ),
          
      ],)
    );
  }
}
