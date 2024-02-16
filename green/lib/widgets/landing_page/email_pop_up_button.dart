import 'package:flutter/material.dart';

import '../../globals.dart';
import 'email_pop_up.dart';

class EmailPopUpButton extends StatelessWidget {
  const EmailPopUpButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return const EmailPopUp();
            },
          );

          onPressed();
        },
        child: Container(
          width: 100,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: primaryTextColour)
          ),
          child: Center(
            child: Text(
              'NOTIFY ME',
              style: defaultTextStyle.copyWith(
                color: primaryTextColour,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}