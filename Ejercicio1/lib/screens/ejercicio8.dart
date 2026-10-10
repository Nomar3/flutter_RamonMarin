import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; //importamos el paquete de google fonts

class Ejercicio8 extends StatelessWidget {
  const Ejercicio8({super.key});


  @override
  Widget build(BuildContext context) {
   
    //a continuacion he hecho el logo+texto como una constante para no repetirme tanto
    final Container logo= Container(
                alignment: Alignment.center,
                child: Column(
                    children: [
                      Icon(Icons.catching_pokemon,
                      color: Colors.red,
                      size: 30,),
                      Text("Flex")
                    ],
                )
              );

    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio 8', style: GoogleFonts.lato()),
      ),
      body: Center(
            child: Column(
              children: [
              logo,
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    logo,
                    logo,
                  ],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  logo,
                  logo,
                  logo,
                ],
              ),
              ],
            ),
          ),
        );

  }
  }