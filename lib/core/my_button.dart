import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.text, required this.onTap});
  final String? text;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(25),
        padding: const EdgeInsets.all(
            25), //paddingle sarmalasak dıştan içe 25 piksel küçültüyo ama böyle olursaiçten dışa veriyo
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.black,
        ),
        child: Center(
          child: Text(
            text ?? 'MyButton(text: girilmedi!)',
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
