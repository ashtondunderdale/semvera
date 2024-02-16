import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:green/globals.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 200,
        decoration: BoxDecoration(
          color: darkGreen,
          border: Border.all(color: lightGreen)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    "Semvera",
                    style: defaultTextStyle.copyWith(
                      color: lightGreen,
                      fontSize: 20
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 32, bottom: 16),
                      child: Icon(
                        FontAwesomeIcons.instagram,
                        size: 20,
                        color: lightGreen,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32, bottom: 16),
                      child: Icon(
                        FontAwesomeIcons.twitter,
                        size: 20,
                        color: lightGreen,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32, bottom: 16),
                      child: Icon(
                        FontAwesomeIcons.discord,
                        size: 20,
                        color: lightGreen,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 12),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CONTACT US",
                      style: defaultTextStyle.copyWith(
                        color: lightGreen,
                        fontSize: 20
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              Icons.phone,
                              color: lightGreen,
                              size: 16,
                            ),
                          ),
                          Text(
                            "07123 492311",
                            style: defaultTextStyle.copyWith(
                              color: lightGreen,
                              fontSize: 14,
                              letterSpacing: 1
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Icon(
                              Icons.mail,
                              color: lightGreen,
                              size: 16,
                            ),
                          ),
                          Text(
                            "info@semvera.com",
                            style: defaultTextStyle.copyWith(
                              color: lightGreen,
                              fontSize: 14,
                              letterSpacing: 0.7,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
              children: [
                 Icon(
                  Icons.copyright,
                  color: lightGreen,
                  size: 14,
                ),
                 Text(
                  "  2024 Semvera",
                  style: defaultTextStyle.copyWith(
                    color: lightGreen,
                    fontSize: 12
                  ),
                )
              ],
              ),
            )
          ],
        ),
      ),
    );
  }
}