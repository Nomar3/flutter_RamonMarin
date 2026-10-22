import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cabecera extends StatelessWidget {
  const Cabecera({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 10), 
              Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                      color: const Color.fromARGB(255, 230, 27, 237),
                      width: 2
                  ),
                 ),
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/flamenco.jpg'),
                )
              ),
              Spacer(),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text("12.000", style: GoogleFonts.lato(fontSize: 26, fontWeight: FontWeight.bold),),
                    Text("Posts", style: GoogleFonts.lato(fontSize: 15),),
                  ]
              )
              ),
              Spacer(),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text("120", style: GoogleFonts.lato(fontSize: 26, fontWeight: FontWeight.bold),),
                    Text("Followers", style: GoogleFonts.lato(fontSize: 15),),
                  ]
              )
              ),
              Spacer(),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text("500", style: GoogleFonts.lato(fontSize: 26, fontWeight: FontWeight.bold),),
                    Text("Following", style: GoogleFonts.lato(fontSize: 15),),
                  ]
              )
              ),
                            SizedBox(width: 20),

            ],
          );
  }
}