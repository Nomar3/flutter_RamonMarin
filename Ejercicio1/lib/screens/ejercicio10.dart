import 'package:flutter/material.dart';
import 'menu_lateral.dart';

class Ejercicio10 extends StatefulWidget {
  const Ejercicio10({super.key});

  @override
  State<Ejercicio10> createState() => _Ejercicio10State();
}

class _Ejercicio10State extends State<Ejercicio10> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
   void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
   void _resetCounter() {
    setState(() {
      _counter=0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Ejercicio 10'),
      ),
      drawer: const MenuLateral(),

      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text('Contador:', style: TextStyle(fontSize: 40),),
            Container(
                    decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 185, 243, 194),
                    border: Border.all(
                      color: const Color.fromARGB(255, 1, 81, 146),
                      width: 2
                  ),
                 ),
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  child:Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 107, 208, 255),
                    border: Border.all(
                      color: const Color.fromARGB(255, 1, 81, 146),
                      width: 2
                  ),
                 ),
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  child: IconButton(onPressed: _incrementCounter, icon: Icon(Icons.add)),

                  ),

                  Container(
                    decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 107, 208, 255),
                    border: Border.all(
                      color: const Color.fromARGB(255, 1, 81, 146),
                      width: 2
                  ),
                 ),
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  child: IconButton(onPressed: _decrementCounter, icon: Icon(Icons.exposure_minus_1)),

                  ),

                  Container(
                    decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 107, 208, 255),
                    border: Border.all(
                      color: const Color.fromARGB(255, 1, 81, 146),
                      width: 2
                  ),
                 ),
                  alignment: Alignment.center,
                  width: 50,
                  height: 50,
                  child: IconButton(onPressed: _resetCounter, icon: Icon(Icons.exposure_zero))

                  ),
                  
                  
                  
                  
                  
                ],


            )
          ],
        ),
      ),




      
    );
  }
}
