import 'package:flutter/material.dart';

class PublicacionesPerfil extends StatelessWidget {
  const PublicacionesPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true, //sino pongo esto a veces da problema
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      crossAxisSpacing: 2.0,
      mainAxisSpacing: 2.0, 
      children: [
        // Puedes cambiar 'assets/lemur.jpg' por las imágenes de tus publicaciones
        Image.asset('assets/caiman.jpg', fit: BoxFit.cover),
        Image.asset('assets/leopard.jpg', fit: BoxFit.cover),
        Image.asset('assets/lince.jpg', fit: BoxFit.cover),
        Image.asset('assets/pajaro1.jpg', fit: BoxFit.cover),
        Image.asset('assets/pajaro2.jpg', fit: BoxFit.cover),
        Image.asset('assets/pajaro3.jpg', fit: BoxFit.cover),
      ],
    );
  }
}