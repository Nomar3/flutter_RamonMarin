import 'package:flutter/material.dart';


class Ejercicio2 extends StatelessWidget {
  const Ejercicio2({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejercicio 2"),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/a_cv.jpg', width: 300, height: 450,),
            Text("Ramón Marín Jiménez", style: TextStyle(fontSize: 35),)
          ],
        ),

      ),
    );
  }
}
