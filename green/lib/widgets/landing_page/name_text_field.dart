import 'package:flutter/material.dart';

import '../../globals.dart';

class NameTextField extends StatelessWidget {
  const NameTextField({super.key, required this.nameController});

  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 40,
      child: TextField(
        controller: nameController,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Name (optional)',
          hintStyle: defaultTextStyle.copyWith(
            color: const Color.fromARGB(255, 172, 172, 172),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),                                  
        ),
      ),
    );
  }
}