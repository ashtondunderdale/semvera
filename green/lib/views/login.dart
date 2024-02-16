import 'package:flutter/material.dart';
import 'package:green/globals.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGreen,
      body: Center(
        child: Container(
          width: 600,
          height: 300,
          decoration: BoxDecoration(
            color: darkGreen,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
                width: 360,
                child: TextField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: defaultTextStyle.copyWith(color: lightGreen),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: lightGreen),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: lightGreen),
                    ),
                  ),
                  style: defaultTextStyle.copyWith(color: lightGreen),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 40,
                width: 360,
                child: TextField(
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: defaultTextStyle.copyWith(color: lightGreen),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: lightGreen),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: lightGreen),
                    ),
                  ),
                  obscureText: true,
                  style: defaultTextStyle.copyWith(color: lightGreen),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                    color: lightGreen,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: defaultTextStyle.copyWith(
                        fontSize: 14,
                        color: darkGreen,
                      ),
                    ),
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
