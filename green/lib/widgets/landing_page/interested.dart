import 'package:flutter/material.dart';
import '../../globals.dart';

class Interested extends StatelessWidget {
  final ScrollController scrollController;

  const Interested({Key? key, required this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 480,
      child: Padding(
        padding: const EdgeInsets.only(top: 180, bottom: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Interested?",
              style: defaultTextStyle.copyWith(
                fontSize: 36,
                color: darkGreen,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                interested, // Add your text here
                style: defaultTextStyle.copyWith(
                  color: darkGreen,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center
              ),
            ),
            InkWell(
              onTap: () {
                scrollController.animateTo(0, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
              },
              child: Container(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: darkGreen)
                ),
                child: Center(
                  child: Text(
                    'JOIN US',
                    style: defaultTextStyle.copyWith(
                      color: darkGreen,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
