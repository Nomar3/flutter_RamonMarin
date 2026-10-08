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
          SizedBox(width: double.infinity,
            child: Image.asset("assets/flamenco.jpg", height: 50, repeat: ImageRepeat.repeatX),),
          SizedBox(width: double.infinity,
            child: Image(image: NetworkImage("https://imgs.search.brave.com/BzG4xw1Ffh62_qE609x5XWm4BEQvnc3ADpABUnjKIXI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90aHVt/YnMuZHJlYW1zdGlt/ZS5jb20vYi9ncmFu/LWFsZXRhLWRlbC10/aWJ1ciVDMyVCM24t/YmxhbmNvLW9jJUMz/JUE5YW5vLW1hci0x/MjAyNTczNzguanBn"), height: 50, repeat: ImageRepeat.repeatX,),),
        ],
      ),
      ),
    );
  }
}