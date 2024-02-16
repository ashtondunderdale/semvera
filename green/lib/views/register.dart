import 'package:flutter/material.dart';
import 'package:green/globals.dart';
import 'package:green/services/api_service.dart';

class Register extends StatelessWidget {
  Register({super.key});

  final APIService api = APIService();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

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
            borderRadius: BorderRadius.circular(16), 
          ),
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey, 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: emailController,
                  cursorColor: lightGreen, 
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: defaultTextStyle.copyWith(color: lightGreen),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: lightGreen),
                      borderRadius: BorderRadius.circular(12), 
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: lightGreen),
                      borderRadius: BorderRadius.circular(12), 
                    ),
                  ),
                  style: defaultTextStyle.copyWith(color: lightGreen),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email address';
                    }
                    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                    if (!emailRegex.hasMatch(value)) return 'Please enter a valid email address';
                    
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: passwordController,
                  cursorColor: lightGreen, 
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: defaultTextStyle.copyWith(color: lightGreen),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: lightGreen),
                      borderRadius: BorderRadius.circular(12), 
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: lightGreen),
                      borderRadius: BorderRadius.circular(12), 
                    ),
                  ),
                  obscureText: true,
                  style: defaultTextStyle.copyWith(color: lightGreen),
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 8) {
                      return 'Password must be at least 8 characters long';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: usernameController,
                  cursorColor: lightGreen, 
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: defaultTextStyle.copyWith(color: lightGreen),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: lightGreen),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: lightGreen),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  style: defaultTextStyle.copyWith(color: lightGreen),
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 3) {
                      return 'Username must be at least 3 characters long';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                ElevatedButton( 
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) { 
                      if (await api.tryRegister(emailController.text, passwordController.text, usernameController.text)) {
                        Navigator.pushNamed(context, '/login');           
                      }
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      "Register",
                      style: defaultTextStyle.copyWith(
                        fontSize: 16, 
                        color: darkGreen,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/login");
                  }, 
                  child: Text(
                    "or login here",
                    style: defaultTextStyle.copyWith(
                      color: lightGreen,
                      fontSize: 14, 
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
