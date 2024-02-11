import 'package:flutter/material.dart';

import '../../globals.dart';

class EmailPopUp extends StatelessWidget {
  const EmailPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      backgroundColor: Colors.transparent,
      child: Container(
        height: 400,
        width: 360,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 32),
                    child: Text(
                      'Thanks!',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        letterSpacing: 1
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        emailWelcomeMessage,
                        style: TextStyle(
                          fontSize: 14,
                          color: textColour
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: SizedBox(
                width: 80,
                height: 40,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Close',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: textColour
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),    
    );
  }
}
