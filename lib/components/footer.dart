// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/bjbfestlogo.png",
              scale: 1.5,
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Copyright © 2024 BJBFest. Made with passion by",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 6,
            ),
            const Text(
              "BJBFest",
              style: TextStyle(
                  color: Color(0xFF1D4AA7),
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
