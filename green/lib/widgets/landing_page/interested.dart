import 'package:flutter/material.dart';
import '../../globals.dart';

class Interested extends StatelessWidget {
  final ScrollController scrollController;

  const Interested({Key? key, required this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Padding(
        padding: const EdgeInsets.only(top: 128),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Interested?",
              style: defaultTextStyle.copyWith(
                fontSize: 36,
                color: primaryTextColour,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 48, top: 8),
              child: Text(
                "", // Add your text here
                style: defaultTextStyle.copyWith(
                  color: primaryTextColour,
                  fontSize: 16,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                scrollController.animateTo(0, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
              },
              child: const Text("Sign up!"),
            )
          ],
        ),
      ),
    );
  }
}
