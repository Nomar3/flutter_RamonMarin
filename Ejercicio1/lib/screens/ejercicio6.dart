import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
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
              child: AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin commodo est a tincidunt tincidunt. Maecenas aliquet magna quis finibus pellentesque. Proin faucibus nunc laoreet nunc sollicitudin, ut tempor nulla sollicitudin. Sed dictum mauris ac euismod commodo. Morbi placerat mi leo, sagittis tincidunt enim ultricies condimentum. Nunc sodales vitae ante quis commodo. Phasellus interdum ornare pulvinar. Nunc eros odio, fringilla eu orci vitae, ornare venenatis augue. In viverra sapien a erat egestas congue.',
                        textStyle: const TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          overflow: TextOverflow.ellipsis,
                        ),
                        speed: const Duration(milliseconds: 200),
                      ),
                    ],

                    totalRepeatCount: 4,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                    
                    //controller: myAnimatedTextController
                  )
              ),
        ],
      ),
      ),
    );
  }
}