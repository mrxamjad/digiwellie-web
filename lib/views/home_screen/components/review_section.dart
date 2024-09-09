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
        _headWidget(context)
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

  Widget _headWidget(BuildContext context) {
    List<String> reviewImages = [
      "assets/images/review1.png",
      "assets/images/review2.png",
      "assets/images/review3.png",
      "assets/images/review4.png",
      "assets/images/review5.png",
    ];

    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Meet the People \n",
          style: TextStyle(
            fontSize: 35,
          ),
        ),
        const Text(
          "We are Working With",
          style: TextStyle(
              color: Clr.black1A202C,
              fontWeight: FontWeight.bold,
              fontSize: 35),
        ),
        const SizedBox(
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 300),
          child: Text(
            "Without any doubt I recommend Alcaline Solutions as one of the best web design and digital marketing agencies. One of the best agencies I’ve came across so far. Wouldn’t be hesitated to introduce their work to someone else.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Clr.black1718096,
                fontWeight: FontWeight.normal,
                fontSize: 18),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 200,
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                    child: Image.asset(reviewImages[index]));
              }),
        )
      ],
    );
  }
}
