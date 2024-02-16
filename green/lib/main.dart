import 'package:flutter/material.dart';
import 'package:green/views/home.dart';
import 'package:green/views/landing_page.dart';
import 'package:green/views/login.dart';
import 'package:green/views/register.dart';

void main() {
  runApp(const Green());
}

class Green extends StatelessWidget {
  const Green({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Semvera",
      debugShowCheckedModeBanner: false,
      home: Register(),
      routes: {
        '/home': (context) => const Home(),
        '/login': (context) => Login(),
        '/register': (context) => Register(),
      },
    );
  }
}
