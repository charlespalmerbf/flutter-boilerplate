import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonText;

  const PrimaryButton(
      {super.key, required this.onTap, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: Text(buttonText,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16))),
      ),
    );
  }
}
