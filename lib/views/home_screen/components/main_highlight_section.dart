import 'package:dw_web/constants/colors.dart';
import 'package:dw_web/constants/directory.dart';
import 'package:flutter/material.dart';

class MainHighlightSection extends StatelessWidget {
  const MainHighlightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          // Desktop view
          return _buildDesktopView();
        } else if (constraints.maxWidth > 600) {
          // Tablet view
          return _buildTabletView();
        } else {
          // Mobile view
          return _buildMobileView();
        }
      },
    );
  }

  // Desktop View Layout
  Widget _buildDesktopView() {
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
                  _highlightedRichText(fontSize: 45, boldFontSize: 53),
                  const SizedBox(height: 20),
                  _highlightedRichTextDesc(fontSize: 18),
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
          ),
        ],
      ),
    );
  }

  // Tablet View Layout
  Widget _buildTabletView() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _highlightedRichText(fontSize: 35, boldFontSize: 45),
                  const SizedBox(height: 20),
                  _highlightedRichTextDesc(fontSize: 16),
                  const SizedBox(height: 20),
                  _getStartedButton()
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(Dir.homeHighlightImage),
            ),
          ),
        ],
      ),
    );
  }

  // Mobile View Layout
  Widget _buildMobileView() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          _highlightedRichText(
              fontSize: 35, boldFontSize: 45, textAlign: TextAlign.center),
          const SizedBox(height: 50),
          _highlightedRichTextDesc(fontSize: 16, textAlign: TextAlign.center),
          const SizedBox(height: 20),
          _getStartedButton(),
          const SizedBox(height: 30),
          Image.asset(Dir.homeHighlightImage), // Image below text for mobile
        ],
      ),
    );
  }

  // Get Started Button
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

  // RichText with dynamic font size
  Widget _highlightedRichText(
      {required double fontSize,
      required double boldFontSize,
      TextAlign? textAlign}) {
    return RichText(
      textAlign: textAlign ?? TextAlign.start,
      text: TextSpan(children: [
        TextSpan(
          text: "Great",
          style: TextStyle(
            fontSize: fontSize,
            color: Clr.black1A202C,
          ),
        ),
        TextSpan(
          text: "  Product ",
          style: TextStyle(
            fontSize: fontSize,
            color: Clr.purple57007B,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextSpan(
          text: "is",
          style: TextStyle(
            fontSize: fontSize,
            color: Clr.black1A202C,
          ),
        ),
        TextSpan(
          text: "\nbuilt by great ",
          style: TextStyle(
            fontSize: boldFontSize,
            color: Clr.black1A202C,
            fontWeight: FontWeight.w900,
          ),
        ),
        TextSpan(
          text: "teams",
          style: TextStyle(
            fontSize: boldFontSize,
            color: Clr.purple57007B,
            fontWeight: FontWeight.w900,
          ),
        ),
      ]),
    );
  }

  // Description text with dynamic font size
  Widget _highlightedRichTextDesc(
      {required double fontSize, TextAlign? textAlign}) {
    return RichText(
      textAlign: textAlign ?? TextAlign.start,
      text: TextSpan(children: [
        TextSpan(
          text:
              "We help build and manage a team of world-class developers to bring your vision to life",
          style: TextStyle(
              fontSize: fontSize,
              color: Clr.grey4A5568,
              fontWeight: FontWeight.normal),
        ),
      ]),
    );
  }
}
