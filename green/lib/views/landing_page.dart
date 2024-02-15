import 'package:flutter/material.dart';
import 'package:green/globals.dart';
import 'package:green/widgets/landing_page/down_arrows.dart';
import 'package:green/widgets/landing_page/landing_information.dart';

import '../services/api_service.dart';
import '../widgets/landing_page/email_pop_up_button.dart';
import '../widgets/landing_page/email_text_field.dart';

class LandingPage extends StatelessWidget {
  LandingPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final APIService api = APIService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          "Green",
          style: defaultTextStyle.copyWith(
            color: Colors.white,
            fontSize: 32
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 600,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 128),
                  child: SizedBox(
                    width: 800,
                    height: 400,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LandingInformation(),
                        Padding(
                          padding: const EdgeInsets.only(top: 32),
                          child: Row(
                            children: [
                              EmailTextField(emailController: emailController),
                              EmailPopUpButton(
                                onPressed: () {
                                  api.addPreLaunchEmail(emailController.text);
                                },
                              ),
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
          const DownArrows()
        ],
      ),
    );
  }
}
