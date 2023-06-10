import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.icon, required this.text, this.size});
  final IconData icon;
  final String text;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kwhite,
        ),
        Text(
          text,
          style: TextStyle(fontSize: size),
        )
      ],
    );
  }
}
