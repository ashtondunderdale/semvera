import 'package:flutter/material.dart';
import 'package:green/globals.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 200,
      decoration: BoxDecoration(
        color: backgroundColor.withOpacity(0.7),
        border: Border.all(color: primaryTextColour)
      ),
    );
  }
}