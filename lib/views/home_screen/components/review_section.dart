import 'package:dw_web/components/gradiant_box.dart';
import 'package:dw_web/constants/colors.dart';
import 'package:flutter/material.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const GradianBox(height: 5, width: 70),
        _headWidget()
      ],
    );
  }

  RichText _headingRichText2() {
    return RichText(
      text: const TextSpan(
          text: "Meet the People \n",
          style: TextStyle(
            fontSize: 35,
          ),
          children: [
            TextSpan(
              text: "We are Working With",
              style: TextStyle(
                  color: Clr.black1A202C, fontWeight: FontWeight.bold),
            ),
          ]),
    );
  }

  Widget _headWidget() {
    return const Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          "Meet the People \n",
          style: TextStyle(
            fontSize: 35,
          ),
        ),
        Text(
          "We are Working With",
          style: TextStyle(
              color: Clr.black1A202C,
              fontWeight: FontWeight.bold,
              fontSize: 35),
        ),
      ],
    );
  }
}
