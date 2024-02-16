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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child: Text(
                      'Thank You!',
                      style: defaultTextStyle.copyWith(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: primaryTextColour,
                        letterSpacing: 1
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        emailWelcomeMessage,
                        style: defaultTextStyle.copyWith(
                          fontSize: 13,
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
              padding: const EdgeInsets.only(bottom: 12),
              child: SizedBox(
                width: 80,
                height: 40,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Close',
                    style: defaultTextStyle.copyWith(
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
