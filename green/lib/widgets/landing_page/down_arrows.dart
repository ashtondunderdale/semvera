import 'package:flutter/material.dart';

class DownArrows extends StatelessWidget {
  const DownArrows({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.arrow_downward,
          color: Colors.white,
          size: 40,
        ),
        Icon(
          Icons.arrow_downward,
          color: Colors.white,
          size: 40,
        ),
        Icon(
          Icons.arrow_downward,
          color: Colors.white,
          size: 40,
        ),  
      ],
    );
  }
}