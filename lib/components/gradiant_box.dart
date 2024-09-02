import 'package:dw_web/constants/colors.dart';
import 'package:flutter/material.dart';

class GradianBox extends StatelessWidget {
  final double height;
  final double width;
  const GradianBox({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Clr.purple57007B, Clr.pinkF76680])),
    );
  }
}
