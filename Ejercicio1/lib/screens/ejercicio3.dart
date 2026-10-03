import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart'; //importamos el paquete de google fonts

class Ejercicio3 extends StatelessWidget {
  const Ejercicio3({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio 3', style: GoogleFonts.lato()),
      ),
      body: Center(
        child: Column(
        children:[ 
          Image.asset("assets/pajaro1.jpg", width: 120, height: 120,),
          Image.asset("assets/pajaro2.jpg", width: 120, height: 120,),
          Image.asset("assets/pajaro3.jpg", width: 120, height: 120,)
        ],
      ),
      ),
    );
  }
}