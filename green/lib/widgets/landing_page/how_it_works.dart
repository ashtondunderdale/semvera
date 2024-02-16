import 'package:flutter/material.dart';

import '../../globals.dart';

class HowItWorks extends StatelessWidget {
  const HowItWorks({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        width: 700,
        child: Padding(
          padding: const EdgeInsets.only(left: 48, top: 96),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "How it works",
                style: defaultTextStyle.copyWith(
                  fontSize: 36,
                  color: darkGreen
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 48, top: 8),
                child: Text(
                  howItWorks,
                  style: defaultTextStyle.copyWith(
                    color: darkGreen,
                    fontSize: 16,
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