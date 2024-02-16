import 'package:flutter/material.dart';

import '../../globals.dart';

class DownArrows extends StatelessWidget {
  const DownArrows({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.arrow_downward,
          color: primaryTextColour,
          size: 40,
        ),
        Icon(
          Icons.arrow_downward,
          color: primaryTextColour,
          size: 40,
        ),
        Icon(
          Icons.arrow_downward,
          color: primaryTextColour,
          size: 40,
        ),  
      ],
    );
  }
}