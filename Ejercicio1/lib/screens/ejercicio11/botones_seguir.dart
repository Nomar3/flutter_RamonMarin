import 'package:flutter/material.dart';

class BotonesSeguir extends StatelessWidget {
  const BotonesSeguir({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
    
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          
          Expanded(
            flex: 2,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text('Follow'),
            ),
          ),
          const SizedBox(width: 10),
          
          
          Expanded(
            flex:2,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text('Message'),
            ),
          ),
          const SizedBox(width: 10),
          
      
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text('Email'),
            ),
          ),
          const SizedBox(width: 10), // Margen entre botones[cite: 3]
          
          
          Expanded(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Icon(Icons.arrow_drop_down, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}