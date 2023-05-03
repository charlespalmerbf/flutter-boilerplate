import 'package:flutter/material.dart';

class SSOTile extends StatelessWidget {
  final String imagePath;

  const SSOTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(border: Border.all(color: Colors.white), borderRadius: BorderRadius.circular(16), color: Colors.grey[200]),
      child: Image.asset(imagePath, height: 75,)
    );
  }
}