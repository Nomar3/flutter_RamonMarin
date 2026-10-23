import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; //paquete que abre las url

final Uri _url = Uri.parse('https://www.instagram.com/');

class Biografia extends StatelessWidget {
  const Biografia({super.key});

  //ft para que me deje lanzar la url, sino no lo hace
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('No se pudo lanzar $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        Column(
          // alinear a la izq
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // primer texto en negrita
            const Text(
              "Biografía muy importante☀️",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            //segundo texto gris claro
            const Text(
              "Segundo texto menos importante",
              style: TextStyle(color: Colors.grey),
            ),
           
            const Text(
              "texto plano", 
              style: TextStyle(color: Colors.grey),
            ),
            const Text("emoji 1:👤"),
            const Text("emoji 2:👾"),
            //hastag de color azul
            const Text(
              "#flutter", 
              style: TextStyle(color: Colors.blue),
            ),
            // enlace con url_launcher
            InkWell(
              onTap: _launchUrl,
              child: const Text(
                "https://www.instagram.com/",
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline, // Estilo clásico de enlace
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}