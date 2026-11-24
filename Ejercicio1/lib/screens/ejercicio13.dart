import 'screens.dart';

class Ejercicio13 extends StatefulWidget {
  const new({super.key});

  @override
  State<Ejercicio13> createState() => _Ejercicio13();
}

class _Ejercicio13 extends State<Ejercicio13> {
  List<String> imagenes = [
    "assets/pajaro1.jpg",
    "assets/pajaro2.jpg",
    "assets/pajaro3.jpg",
  ];
  String imagenActual = "assets/pajaro1.jpg";

  int estadoJuego = 0; //para establecer cuando acaba
  int points = 0;
  int temporizador = 20;//tiempo que dura el juego
  Timer? temporizadorImagen;

  final Random _generador = Random();

  double _posX = 24;
  double _posY = 24;
  double _anchoTablero = 0;
  double _altoTablero = 0;

  double anchoFoto = 150;

  @override
  void initState() {
    super.initState();
    //timerJuego();
  }

  void timerJuego() {
    Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      temporizador--;
      if (temporizador == 0) {
        timer.cancel();
        cambiarEstadoJuego(2);
        setState(() {});
      }
    });
  }
  void timerImagen(){
  temporizadorImagen= Timer.periodic(const Duration(milliseconds: 5000), (timer) {
      _sortearCoordenadasSeguras();
      points-=2;
      setState(() {});
    });
  }

  // Cambia la imagen actual a una aleatoria de la lista
  void cambiarImagen() {
      imagenActual = imagenes[_generador.nextInt(imagenes.length)];
      setState(() {});
  }

  void _sortearCoordenadasSeguras() {
    // Calcula una nueva posición sin salirse del tablero
    final double maxX = _anchoTablero - anchoFoto; // Margen derecho descontando la diana
    final double maxY = _altoTablero - anchoFoto; // Margen inferior descontando la diana
    _posX = maxX > 0 ? _generador.nextDouble() * maxX: 0; // Protege contra valores negativos
    _posY = maxY > 0 ? _generador.nextDouble() * maxY: 0; // Coordenada vertical segura [0..maxY)
    cambiarImagen(); // Cambia la imagen cada vez que se sortean nuevas coordenadas
  }

  void cambiarEstadoJuego(int nuevoEstado) {
    setState(() {
      if (nuevoEstado == 1) {
        estadoJuego = 1; // Cambiar a estado de juego activo
        timerJuego(); // Iniciar el temporizador
        timerImagen(); // Iniciar el temporizador de cambio de imagen
      } else if (nuevoEstado == 2) {
        temporizadorImagen?.cancel(); // Detener el temporizador de cambio de imagen
        estadoJuego = 2; // Cambiar a estado de juego terminado
      } else {
        estadoJuego = 0; // Cambiar a estado de juego inactivo
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget contenidoJuego;
    //primero la pantalla final:
    if (estadoJuego == 2) {
      // Si el juego ha terminado, guardamos el texto de fin
      contenidoJuego = Column(
        children:[
        Spacer(),
        Center(child:Text(
        '¡Juego terminado!\nPuntuación final: $points',
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontFamily: 'Arial',
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      )),
      Spacer(),

      ]);
    } else if (estadoJuego == 1) {
      //modo normal, el juego en activo:
      contenidoJuego = Column(children: [
        Center(child:Text(
          'Puntos: $points',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        Expanded(child:SizedBox(
        // OBLIGATORIO acotar altura del Stack dentro de Column
        height: 250, // Altura fija del campo de juego
        width: double.infinity, // Ocupa todo el ancho disponible de la Card
        child: LayoutBuilder(
          // Mide anchura y altura reales del área de juego
          builder: (BuildContext boardContext, BoxConstraints limites) {
            // Entrega límites
            _anchoTablero =
                limites.maxWidth; // Guarda ancho real SIN llamar a setState
            _altoTablero =
                limites.maxHeight; // Guarda alto real SIN llamar a setState
            return Container(
              // Marco visual del tablero
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ), // Esquinas
                border: Border.all(color: Colors.black), // Borde
              ), // Cierra BoxDecoration
              child: Stack(
                children:[
                  Positioned(
                    left: _posX, // Coordenada horizontal segura
                    top: _posY,
                    child: GestureDetector(
                      onTap: () {
                        //timer();
                        onGiftTap();
                      },
                      child: Image(
                        image: AssetImage(imagenActual),
                        width: anchoFoto,
                        height: anchoFoto,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ))]);
    } else {
      contenidoJuego = Center(
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
        title: const Text('Ejercicio 13'),
      ),
      drawer: const MenuLateral(),
      body: contenidoJuego,
    );
  }
  void onGiftTap() {
    points++;
    _sortearCoordenadasSeguras();
    temporizadorImagen?.cancel(); // Detener el temporizador de cambio de imagen
    //aqui va lo que hace al toque
    timerImagen(); // Reiniciar el temporizador de cambio de imagen
    setState(() {});
  }
}
