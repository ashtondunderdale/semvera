import 'package:flutter/material.dart';
import 'package:green/globals.dart';

import '../widgets/landing_page/email_pop_up.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 600,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 128),
                child: SizedBox(
                  width: 700,
                  height: 400,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text(
                            "COMING SOON",
                            style: TextStyle(
                              color: Color.fromARGB(255, 229, 229, 229),
                            ),
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Inspiring Green Innovation",
                          style: TextStyle(
                            fontSize: 52,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1
                          ),
                        ),
                      ),
                      const Text(
                        "Solve problems while making a positive impact on the environment, every solution contributes to a greener, more sustainable future.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 32),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 300,
                              height: 40,
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'Email',
                                  hintStyle: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),                                  
                                ),
                              ),
                            ),
                            Padding(
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
                                  child: const Center(
                                    child: Text(
                                      'GET NOTIFIED',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 65, 65, 65),
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
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
      ),
    );
  }
}
