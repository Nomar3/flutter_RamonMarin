import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart'; //importamos el paquete de google fonts

class Ejercicio1 extends StatelessWidget {
  const Ejercicio1({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio 1', style: GoogleFonts.lato()),
      ),
      body: Center(
        child: Column(
        children:[ 
          Text("Ramón Marín Jiménez",   style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.blue, letterSpacing: .5, fontSize: 35)),
 ),
          Text("Repositorio de gitHub:\n https://github.com/Nomar3/flutter_RamonMarin", textAlign: TextAlign.center ,style: GoogleFonts.gideonRoman()),
        // aqui arriba va el repo
        ],
      ),
      ),
    );
  }
}
