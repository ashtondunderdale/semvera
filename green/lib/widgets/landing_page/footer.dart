import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:green/globals.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 200,
      decoration: BoxDecoration(
        color: primaryTextColour,
        border: Border.all(color: primaryTextColour)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 16),
                child: Icon(
                  FontAwesomeIcons.instagram,
                  size: 20,
                  color: backgroundColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 16),
                child: Icon(
                  FontAwesomeIcons.twitter,
                  size: 20,
                  color: backgroundColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 16),
                child: Icon(
                  FontAwesomeIcons.discord,
                  size: 20,
                  color: backgroundColor,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 64, top: 12),
            child: SizedBox(
              child: Column(
                children: [
                  Text(
                    "CONTACT US",
                    style: defaultTextStyle.copyWith(
                      color: backgroundColor,
                      fontSize: 20
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16, left: 28),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Icon(
                            Icons.mail,
                            color: backgroundColor,
                            size: 20,
                          ),
                        ),
                        Text(
                          "info@green.co.uk",
                          style: defaultTextStyle.copyWith(
                            color: backgroundColor,
                            fontSize: 14
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}