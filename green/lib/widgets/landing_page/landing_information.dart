import 'package:flutter/material.dart';

import '../../globals.dart';

class LandingInformation extends StatelessWidget {
  const LandingInformation({super.key});

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              "COMING SOON",
              style: defaultTextStyle.copyWith(
                color: darkGreen,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Inspiring Green Innovation",
            style: defaultTextStyle.copyWith(
              fontSize: 52,
              fontWeight: FontWeight.bold,
              color: darkGreen,
              letterSpacing: 1,
            ),
          ),
        ),
        Text(
          "Solve problems while making a positive impact on the environment, every solution contributes to a greener, more sustainable future.",
          style: defaultTextStyle.copyWith(
            color: darkGreen,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
