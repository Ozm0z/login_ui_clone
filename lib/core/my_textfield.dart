import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  const MyTextfield({super.key, required this.labelText, this.controller, required this.obscureText});
  final String labelText;
  final controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller, //bu
        obscureText: obscureText, //bu
        decoration: InputDecoration(
          labelText: labelText, //ve bu propertiesler, bu MyTextField widgetı çağırılrken zorunlu verilecek
          labelStyle: const TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
          fillColor: Colors.grey.shade200,
          filled: true,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
        ),
      ),
    );
  }
}
