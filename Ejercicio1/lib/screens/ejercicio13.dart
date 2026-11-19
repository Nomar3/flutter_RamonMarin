import 'screens.dart';

class Ejercicio13 extends StatefulWidget {
  const new({super.key});

  @override
  State<Ejercicio13> createState() => _Ejercicio13();
}

class _Ejercicio13 extends State<Ejercicio13> {

  int estadoJuego = 0;//para establecer cuando acaba
  int points = 0;
  int temporizador=10;


  @override
  void initState() {
    super.initState();
    timer();
  }

  void timer() {
  /*   Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      setState(() {});
      //aqui va que se cambie la imagen
      }); */
    Timer.periodic(const Duration(milliseconds: 1000), (timer){
      temporizador--;
      if (temporizador == 0) {
        timer.cancel();
        estadoJuego = 2;
        setState(() {});
      }
    });
  }

  void cambiarEstadoJuego(int nuevoEstado) {
    setState(() {
      if (nuevoEstado == 1) {
        estadoJuego = 1; // Cambiar a estado de juego activo
        timer(); // Iniciar el temporizador
      } else if (nuevoEstado == 2) {
        estadoJuego = 2; // Cambiar a estado de juego terminado
      }
      else {
        estadoJuego = 0; // Cambiar a estado de juego inactivo
      }
    });
  }




  @override
  Widget build(BuildContext context) {
    Widget contenidoJuego;
  //primero la pantalla final:
  if (estadoJuego==2) {
    // Si el juego ha terminado, guardamos el texto de fin
    contenidoJuego = Text(
      '¡Juego terminado!\nPuntuación final: $points',
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.blueAccent,
      ),
    );
  } else if (estadoJuego==1) {
    //modo normal, el juego en activo:
    contenidoJuego = Center(child:
    Column(children: [
      GestureDetector(
        onTap: () {
          //timer();
          onGiftTap();
        },
        child: Image(image: AssetImage("assets/pajaro1.jpg"), width: 150, height: 150,),),
        Text(
          'Puntos: $points',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
    ]
    ));
  } else {
   contenidoJuego= Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '¡Bienvenido al juego de imágenes!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                cambiarEstadoJuego(1); // Cambiar a estado de juego activo
              },
              child: const Text('Comenzar'),
            ),
          ],
        ),
      );

  }






    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Ejercicio 13'),
      ),
      drawer: const MenuLateral(),
      body: contenidoJuego,
    );
  }

void outGiftTap() {
    points-=2;
   //aqui va lo que hace al toque
    setState(() {});
  }

  void onGiftTap() {
    points++;
   //aqui va lo que hace al toque
    setState(() {});
  }
}