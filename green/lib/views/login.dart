import 'package:flutter/material.dart';
import 'package:green/globals.dart';
import 'package:green/services/api_service.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final APIService api = APIService();

  final TextEditingController usernameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGreen,
      body: Center(
        child: Container(
          width: 400,
          height: 480,
          decoration: BoxDecoration(
            color: darkGreen,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      width: 360,
                      child: TextFormField(
                        controller: usernameController,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          labelText: 'username',
                          labelStyle: defaultTextStyle.copyWith(color: lightGreen),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightGreen),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: lightGreen),
                          ),
                        ),
                        style: defaultTextStyle.copyWith(color: lightGreen),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      width: 360,
                      child: TextFormField(
                        controller: passwordController,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          labelText: 'password',
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () async {
                  if (_formKey.currentState!.validate()) {
                    bool loginSuccess = await api.tryLogin(usernameController.text, passwordController.text);
                    if (!loginSuccess) {
                      setState(() {
                        errorMessage = 'Incorrect credentials';
                      });
                    } else {
                      Navigator.pushNamed(context, '/home');
                    }
                  }
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
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/register");
                }, 
                child: Text(
                  "or register here",
                  style: defaultTextStyle.copyWith(
                    color: lightGreen,
                    fontSize: 12,
                  ),
                ),
              ),
              Text(
                errorMessage,
                style: const TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
