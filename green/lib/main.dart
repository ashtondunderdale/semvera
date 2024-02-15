import 'package:flutter/material.dart';
import 'package:green/views/landing_page.dart';

void main() {
  runApp(const Green());
}

class Green extends StatelessWidget {
  const Green({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage()
    );
  }
}
