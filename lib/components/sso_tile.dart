import 'package:flutter/material.dart';

class SSOTile extends StatelessWidget {
  final String imagePath;

  const SSOTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(child: Image.asset(imagePath));
  }
}