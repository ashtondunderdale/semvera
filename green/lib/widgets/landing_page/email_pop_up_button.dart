import 'package:flutter/material.dart';

import '../../globals.dart';
import 'email_pop_up.dart';

class EmailPopUpButton extends StatelessWidget {
  const EmailPopUpButton({super.key});

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
        },
        child: Container(
          width: 120,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              'GET NOTIFIED',
              style: defaultTextStyle.copyWith(
                color: const Color.fromARGB(255, 172, 172, 172),
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}