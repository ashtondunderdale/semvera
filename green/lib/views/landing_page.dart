import 'package:flutter/material.dart';
import 'package:green/globals.dart';
import 'package:green/widgets/landing_page/landing_information.dart';

import '../widgets/landing_page/email_pop_up_button.dart';
import '../widgets/landing_page/email_text_field.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 600,
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 128),
                  child: SizedBox(
                    width: 800,
                    height: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LandingInformation(),
                        Padding(
                          padding: EdgeInsets.only(top: 32),
                          child: Row(
                            children: [
                              EmailTextField(),
                              EmailPopUpButton(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.arrow_downward,
                color: Colors.white,
                size: 40,
              ),
              Icon(
                Icons.arrow_downward,
                color: Colors.white,
                size: 40,
              ),
              Icon(
                Icons.arrow_downward,
                color: Colors.white,
                size: 40,
              ),        
            ],
          )
        ],
      ),
    );
  }
}
