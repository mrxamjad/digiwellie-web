import 'package:dw_web/components/gradiant_box.dart';
import 'package:dw_web/constants/colors.dart';
import 'package:dw_web/constants/directory.dart';
import 'package:flutter/material.dart';

class ClientDescSection extends StatelessWidget {
  const ClientDescSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          top: -25,
          left: 100,
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Clr.purple57007B,
                  Clr.pinkF76680,
                ]),
              ),
            ),
          ),
        ),
        Positioned.fill(
          bottom: -25,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Clr.purple57007B,
                  Clr.pinkF76680,
                ]),
              ),
            ),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double padding = screenWidth < 600 ? 20 : 100; // Responsive padding
            double headingFontSize =
                screenWidth < 600 ? 24 : 35; // Heading size
            double descFontSize =
                screenWidth < 600 ? 16 : 18; // Description size
            double imageHeight = screenWidth < 600
                ? 250
                : 460; // Image height for mobile vs desktop

            return Container(
              padding: EdgeInsets.symmetric(horizontal: padding, vertical: 100),
              child: Column(
                children: [
                  screenWidth < 600
                      ? Column(
                          children: [
                            const GradianBox(height: 5, width: 70),
                            const SizedBox(
                              height: 30,
                            ),
                            _headingRichText(headingFontSize,
                                textAlign: TextAlign.center),
                            const SizedBox(height: 20),
                            _descRichText(descFontSize,
                                textAlign: TextAlign.center),
                            const SizedBox(height: 20),
                            _videoImage(
                                imageHeight), // Image in Column for mobile
                            const SizedBox(height: 20),
                            _seeMoreInfo(screenWidth),
                          ],
                        )
                      : Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const GradianBox(height: 5, width: 70),
                                  const SizedBox(height: 20),
                                  _headingRichText(headingFontSize),
                                  const SizedBox(height: 20),
                                  _descRichText(descFontSize),
                                  const SizedBox(height: 20),
                                  _seeMoreInfo(screenWidth),
                                ],
                              ),
                            ),
                            const SizedBox(width: 50),
                            Expanded(
                              child: _videoImage(
                                  imageHeight), // Image in Row for larger screens
                            ),
                          ],
                        ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: screenWidth > 600
                        ? 200
                        : screenWidth < 300
                            ? 300
                            : 155,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 20),
                              const GradianBox(height: 5, width: 70),
                              const SizedBox(height: 20),
                              _headingRichText2(headingFontSize),
                              const SizedBox(height: 50),
                            ],
                          ),
                        ),
                        Positioned.fill(
                          top: screenWidth < 200 ? 0 : 50,
                          child: const Align(
                            alignment: Alignment.bottomRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                NextAndBack(),
                                SizedBox(width: 20),
                                NextAndBack(isNext: true),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Row _seeMoreInfo(double screenHeight) {
    return Row(
      children: [
        screenHeight < 300
            ? const Expanded(
                child: Text(
                  "See more Informations",
                  maxLines: 3,
                  style: TextStyle(
                      color: Clr.purple57007B,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              )
            : const Text(
                "See more Informations",
                maxLines: 3,
                style: TextStyle(
                    color: Clr.purple57007B,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
        const SizedBox(width: 20),
        const Icon(
          Icons.arrow_forward_outlined,
          color: Clr.purple57007B,
        ),
      ],
    );
  }

  RichText _descRichText(double fontSize, {TextAlign? textAlign}) {
    return RichText(
      textAlign: textAlign ?? TextAlign.start,
      text: TextSpan(
        text: "We",
        style: TextStyle(color: Clr.grey4A5568, fontSize: fontSize),
        children: const [
          TextSpan(
            text: " add development capacity ",
            style: TextStyle(color: Clr.pinkF76680),
          ),
          TextSpan(
            text:
                "to tech teams. Our value isn’t limited to building teams but is equally distributed across the project lifecycle. We are a custom software development company that guarantees the successful delivery of your project.",
          ),
        ],
      ),
    );
  }

  RichText _headingRichText(double fontSize, {TextAlign? textAlign}) {
    return RichText(
      textAlign: textAlign ?? TextAlign.start,
      text: TextSpan(
        text: "Leading companies trust us \n",
        style: TextStyle(fontSize: fontSize, color: Clr.black1718096),
        children: const [
          TextSpan(
            text: "To develop software",
            style:
                TextStyle(color: Clr.purple6675F7, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  RichText _headingRichText2(double fontSize) {
    return RichText(
      text: TextSpan(
        text: "Meet the People \n",
        style: TextStyle(fontSize: fontSize),
        children: const [
          TextSpan(
            text: "We are Working With",
            style:
                TextStyle(color: Clr.black1A202C, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Image _videoImage(double height) {
    return Image.asset(
      height: height,
      Dir.videoImageHome,
    );
  }
}

class NextAndBack extends StatefulWidget {
  final bool? isNext;
  const NextAndBack({super.key, this.isNext});

  @override
  State<NextAndBack> createState() => _NextAndBackState();
}

class _NextAndBackState extends State<NextAndBack> {
  Color _btnColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          _btnColor = value ? Clr.purple57007B : Colors.white;
        });
      },
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          border: Border.all(
            color: Clr.purple57007B,
            width: 1,
          ),
          shape: BoxShape.circle,
          color: _btnColor,
        ),
        child: Icon(
          widget.isNext ?? false ? Icons.arrow_forward : Icons.arrow_back,
          color: Clr.purple57007B,
        ),
      ),
    );
  }
}
