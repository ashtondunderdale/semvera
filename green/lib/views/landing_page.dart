import 'package:flutter/material.dart';
import 'package:green/globals.dart';
import 'package:green/widgets/landing_page/about_us.dart';
import 'package:green/widgets/landing_page/down_arrows.dart';
import 'package:green/widgets/landing_page/interested.dart';
import 'package:green/widgets/landing_page/landing_information.dart';

import '../services/api_service.dart';
import '../widgets/landing_page/email_pop_up_button.dart';
import '../widgets/landing_page/email_text_field.dart';
import '../widgets/landing_page/footer.dart';
import '../widgets/landing_page/how_it_works.dart';
import '../widgets/landing_page/name_text_field.dart';
import '../widgets/landing_page/triple_text_box.dart';

class LandingPage extends StatelessWidget {
  LandingPage({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final APIService api = APIService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGreen,
      appBar: AppBar(
        surfaceTintColor: lightGreen,
        backgroundColor: lightGreen,
        title: Text(
          "Semvera",
          style: defaultTextStyle.copyWith(
            color: darkGreen,
            fontSize: 32
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 8),
                                      child: NameTextField(nameController: nameController),
                                    ),
                                    Row(
                                      children: [
                                        EmailTextField(emailController: emailController),
                                        EmailPopUpButton(
                                          onPressed: () {
                                            api.addPreLaunchEmail(emailController.text, nameController.text);
                                            emailController.text = "";
                                            nameController.text = "";
                                          },
                                        ),
                                      ],
                                    )
                                  ],
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
            const DownArrows(),
            const AboutUs(),
            const HowItWorks(),
            const TripleTextBox(),
            Interested(scrollController: _scrollController),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
