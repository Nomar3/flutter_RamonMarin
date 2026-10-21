import 'package:flutter/material.dart';
import 'menu_lateral.dart';

class Ejercicio10 extends StatelessWidget {
  const Ejercicio10({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejercicio 10',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Ejercicio 10'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        title: Text(widget.title),
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
