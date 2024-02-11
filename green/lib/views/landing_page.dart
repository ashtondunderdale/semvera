import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Container(
            width: 700,
            height: 300,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 233, 233, 233),
              border: Border.all(color: const Color.fromARGB(255, 186, 186, 186), width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 64),
                  child: Text(
                    "Coming Soon",
                    style: TextStyle(
                      fontSize: 48,
                      color: Color.fromARGB(255, 79, 79, 79),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 400,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10), 
                      alignLabelWithHint: true, 
                    ),
                    textAlign: TextAlign.start, 
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}