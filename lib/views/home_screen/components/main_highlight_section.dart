import 'package:dw_web/constants/colors.dart';
import 'package:dw_web/constants/directory.dart';
import 'package:flutter/material.dart';

class MainHighlightSection extends StatelessWidget {
  const MainHighlightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _highlightedRichText(),
                  const SizedBox(height: 20),
                  _highlightedRichTextDesc(),
                  const SizedBox(height: 20),
                  _getStartedButton()
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset(Dir.homeHighlightImage),
            ),
          )
        ],
      ),
    );
  }

  SizedBox _getStartedButton() {
    return SizedBox(
      height: 52,
      width: 175,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          backgroundColor: Clr.blue3D63EA,
        ),
        child: const SelectableText(
          "Get Started",
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w600, color: Clr.white),
        ),
      ),
    );
  }
}

Widget _highlightedRichText() {
  return RichText(
    text: const TextSpan(children: [
      TextSpan(
          text: "Great",
          style: TextStyle(
            fontSize: 45,
            color: Clr.black1A202C,
          )),
      TextSpan(
          text: "  Product ",
          style: TextStyle(
              fontSize: 45,
              color: Clr.purple57007B,
              fontWeight: FontWeight.bold)),
      TextSpan(
          text: "is",
          style: TextStyle(
            fontSize: 45,
            color: Clr.black1A202C,
          )),
      TextSpan(
          text: "\nbuilt by great ",
          style: TextStyle(
              fontSize: 53,
              color: Clr.black1A202C,
              fontWeight: FontWeight.w900)),
      TextSpan(
          text: "teams",
          style: TextStyle(
              fontSize: 53,
              color: Clr.purple57007B,
              fontWeight: FontWeight.w900))
    ]),
  );
}

Widget _highlightedRichTextDesc() {
  return RichText(
    text: const TextSpan(children: [
      TextSpan(
          text:
              "We help build and manage a team of world-class developers to bring your vision to life",
          style: TextStyle(
              fontSize: 18,
              color: Clr.grey4A5568,
              fontWeight: FontWeight.normal))
    ]),
  );
}
