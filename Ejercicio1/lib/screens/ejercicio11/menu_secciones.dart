import 'package:flutter/material.dart';

class MenuSecciones extends StatelessWidget {
  const MenuSecciones({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //la linea fina
        const Divider(height: 1, thickness: 0.5, color: Colors.grey),
        
        //loss iconos en si
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.grid_on, color: Colors.black),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(Icons.video_collection_outlined, color: Colors.grey),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(Icons.shopping_bag_outlined, color: Colors.grey), 
              onPressed: null,
            ),
            IconButton(
              icon: Icon(Icons.person_pin_outlined, color: Colors.grey),
              onPressed: null,
            ),
          ],
        ),
        
        Row(
          children: [
            Expanded(
              child: Container(
                height: 1.5,
                color: Colors.black, // Línea negra activa
              ),
            ),
            Expanded(
              child: Container(height: 1.5, color: Colors.transparent),
            ),
            Expanded(
              child: Container(height: 1.5, color: Colors.transparent),
            ),
            Expanded(
              child: Container(height: 1.5, color: Colors.transparent),
            ),
          ],
        ),
      ],
    );
  }
}