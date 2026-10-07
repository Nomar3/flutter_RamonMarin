import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart'; //importamos el paquete de google fonts

class Ejercicio7 extends StatelessWidget {
  const Ejercicio7({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio7', style: GoogleFonts.lato()),
      ),
      body: Center(
        child: ListView(
          // hacer esto con lo de la lista
        children:[ 
          Image.asset("assets/caiman.jpg", width: 300, height: 250,),
          Image.asset("assets/flamenco.jpg", width: 300, height: 250,),
          Image.asset("assets/lemur.jpg", width: 300, height: 250,),
          Image.asset("assets/leopard.jpg", width: 300, height: 250,),
          Image.asset("assets/lince.jpg", width: 300, height: 250,)
        ],
      ),
      ),
    );
  }
}