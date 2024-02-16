import 'package:flutter/material.dart';

import '../../globals.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: 700,
        child: Padding(
          padding: const EdgeInsets.only(left: 48, top: 128),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About us",
                style: defaultTextStyle.copyWith(
                  fontSize: 36,
                  color: primaryTextColour
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  aboutUsMessage,
                  style: defaultTextStyle.copyWith(
                    color: primaryTextColour,
                    fontSize: 16
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}