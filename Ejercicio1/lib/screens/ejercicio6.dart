import 'package:flutter/material.dart';
import 'package:control_style/control_style.dart';
import 'package:google_fonts/google_fonts.dart'; //importamos el paquete de google fonts

class Ejercicio6 extends StatelessWidget {
  const Ejercicio6({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio 6', style: GoogleFonts.lato()),
      ),
      body: Center(
        child: Column(
        children:[ 
            Container(
              padding: const EdgeInsets.all(10), 
              child: Text(
                "En un lugar de la Mancha, de cuyo nombre no quiero acordarme, no ha mucho tiempo aaaa aaaaa aaaaaaaaa aaaaaaaaaaaa aaaaaaaaaaaaaa aaaaaaaaaaaaaaaa aaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaa aaaaaaaaaaaaaa aaaaaaaaaaaaaaaa aaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaa aaaaaaaaaaaaaa aaaaaaaaaaaaaaaa aaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaaa aaaaaaaaaaaa aaaaaaaaaaaaaa aaaaaaaaaaaaaaaa aaaaaaaaaa aaaaaaaaaaaaa aaaaaaa",
           	     maxLines: 3,
                overflow: TextOverflow.ellipsis,style: GoogleFonts.delaGothicOne(textStyle: TextStyle(color: Colors.blue, fontSize: 30)),
              ),),
              Container(
              padding: const EdgeInsets.all(10), 
              child: const Text(
                "En un lugar de la Mancha, de cuyo nombre no quiero acordarme, no ha mucho tiempo bbbbbb bbbbbbbbbbbb bbbbbbbbbbb bbbbbbbbbbbb bbbbbbbbb bbbbbb bbb bbbbbbbbbbb bbbbbbbbbbbb bbbbbbbbb bbb bbbbbbbbbbb bbbbbbbbbbbb bbbbbbbbb bbb bbbbbbbbbbb bbbbbbbbbbbb bbbbbbbbb bbb bbbbbbbbbbb bbbbbbbbbbbb bbbbbbbbb bbb bbbbbbbbbbb bbbbbbbbbbbb bbbbbbbbb bbb bbbbbbbbbbb bbbbbbbbbbbb bbbbbbbbb bbb bbbbbbbbbbb bbbbbbbbbbbb bbbbbbbbb ",
              	 maxLines: 3,
                overflow: TextOverflow.ellipsis,style: TextStyle(fontFamily: 'Amazone-BT', fontSize: 30)
              ),),
              Container(
              padding: const EdgeInsets.all(10), 
              child: const Text(
                "En un lugar de la Mancha, de cuyo nombre no quiero acordarme, no ha mucho tiempo cccccc cccccccccccccc cccccccccccccc cccc  cccccccc ccccccc cccccccccccc c cccccccccccc cccccccccccccc cccc  cccccccc ccccccc cccccccccccc ccccccccccccc cccccccccccccc cccc  cccccccc ccccccc cccccccccccc ccccccccccccc cccccccccccccc cccc  cccccccc ccccccc cccccccccccc ccccccccccccc cccccccccccccc cccc  cccccccc ccccccc cccccccccccc c",
           	 maxLines: 3,
                overflow: TextOverflow.ellipsis,style: TextStyle(fontFamily: 'Amazone-BT', fontSize: 30)
              ),),
          

        ],
      ),
      ),
    );
  }
}