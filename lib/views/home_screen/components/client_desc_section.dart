import 'package:dw_web/components/gradiant_box.dart';
import 'package:dw_web/constants/colors.dart';
import 'package:dw_web/constants/directory.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const GradianBox(
                          height: 5,
                          width: 70,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        _headingRichText(),
                        const SizedBox(height: 20),
                        _descRichText(),
                        const SizedBox(
                          height: 20,
                        ),
                        _seeMoreInfo()
                      ],
                    ),
                  ),
                  const SizedBox(width: 50),
                  Expanded(child: _videoImage())
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const GradianBox(height: 5, width: 70),
                      const SizedBox(
                        height: 20,
                      ),
                      _headingRichText2(),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      NextAndBack(),
                      SizedBox(width: 20),
                      NextAndBack(
                        isNext: true,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  Row _seeMoreInfo() {
    return const Row(
      children: [
        Text(
          "See more Informations",
          style: TextStyle(
              color: Clr.purple57007B,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          width: 20,
        ),
        Icon(
          Icons.arrow_forward_outlined,
          color: Clr.purple57007B,
        )
      ],
    );
  }

  RichText _descRichText() {
    return RichText(
      text: const TextSpan(
          text: "We",
          style: TextStyle(color: Clr.grey4A5568, fontSize: 18),
          children: [
            TextSpan(
              text: " add development capacity ",
              style: TextStyle(
                color: Clr.pinkF76680,
              ),
            ),
            TextSpan(
              text:
                  "to tech teams. Our value isn’t limited to building teams but is equally distributed across the project lifecycle. We are a custom software development company that guarantees the successful delivery of your project.",
            ),
          ]),
    );
  }

  RichText _headingRichText() {
    return RichText(
      text: const TextSpan(
          text: "Leading companies trust us \n",
          style: TextStyle(
            fontSize: 35,
          ),
          children: [
            TextSpan(
              text: "to develop software",
              style: TextStyle(
                  color: Clr.purple6675F7, fontWeight: FontWeight.bold),
            ),
          ]),
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

  Image _videoImage() => Image.asset(height: 460, Dir.videoImageHome);
}

class NextAndBack extends StatefulWidget {
  final bool? isNext;
  const NextAndBack({
    super.key,
    this.isNext,
  });

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
