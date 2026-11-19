import '../screens/screens.dart';

class MiTema {

  // Tema Claro

  static ThemeData get modoClaro {

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: PaletaColores.fondoScaffold,
      appBarTheme: AppBarTheme(
        backgroundColor: PaletaColores.fondoAppBar,
        
        ),
      textTheme: TextTheme(
        headlineMedium: TextStyle(color: PaletaColores.tituloAppBar, fontSize: 22),
        titleMedium: TextStyle(color: PaletaColores.tituloAppBar, fontSize: 22),
        bodyMedium: TextStyle(color: PaletaColores.textoClaro, fontSize: 18),)
    );
  }


  //Oscuro
  static ThemeData get modoOscuro {

    return ThemeData(

      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor:  PaletaColores.fondoAppBarOscuro,
        brightness: Brightness.dark),
      scaffoldBackgroundColor: PaletaColores.fondoScaffoldOscuro,
       textTheme: TextTheme(
        titleSmall: TextStyle(color: PaletaColores.tituloAppBarOscuro, fontSize: 22),
        bodyMedium: TextStyle(color: PaletaColores.textoClaroOscuro, fontSize: 18),
      )
    );
  }

}