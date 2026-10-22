import 'package:flutter/material.dart';

//sacamos la historia para poner la misma e ir mas rapido
  var historia =  Container(
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
                  backgroundImage: AssetImage('assets/lemur.jpg'),
                )
              );

class Historias extends StatelessWidget {
  const Historias({super.key});


  @override
  Widget build(BuildContext context) {
    return  GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 1,
        mainAxisSpacing: 30,
        children: [
              historia,
              historia,
              historia,
              historia,
              historia,
              historia,
              historia,
        ],
    );
    
  }
}