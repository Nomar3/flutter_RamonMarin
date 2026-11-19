import 'screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text("Ejercicios"),
          ),
          drawer: const MenuLateral(),
          body: const Center(
            child: Text("Relación Flutter\n\n2º DAM\nRamón Marín Jiménez", style: TextStyle(fontSize: 38), textAlign: TextAlign.center),),
          );
  }
}