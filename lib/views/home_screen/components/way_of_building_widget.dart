// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:dw_web/constants/colors.dart';
import 'package:dw_web/constants/directory.dart';

import '../../../components/gradiant_box.dart';

class WayOfBuildingSection extends StatelessWidget {
  const WayOfBuildingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          GradianBox(height: 5, width: 70),
          SizedBox(
            height: 20,
          ),
          Text(
            "Way of building",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w100),
          ),
          Text(
            "Great Software",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 60,
          ),
          ImageCardWidget(imagePath: Dir.scalBoard, profileImage: Dir.profile1),
          ImageCardWidget(
              imagePath: Dir.scalBoard2,
              profileImage: Dir.profile2,
              isLeft: true),
          ImageCardWidget(imagePath: Dir.scalBoard3, profileImage: Dir.profile3)
        ],
      ),
    );
  }

  Container ImageCardWidget(
      {required String imagePath,
      required String profileImage,
      bool isLeft = false}) {
    return Container(
      child: Row(
        children: [
          if (isLeft)
            Expanded(
                child: Container(
              height: 500,
              padding: const EdgeInsets.only(left: 80, top: 50, bottom: 50),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            )),
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(left: 80, right: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Build the right team to scale",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Finding the right talent is not easy. We help you find the talent that suits your needs, follows your processes, and sticks with you long term (not the case with freelancers",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                    text: TextSpan(
                        style: TextStyle(fontSize: 18, color: Clr.black1718096),
                        children: [
                      TextSpan(text: "Our"),
                      TextSpan(
                          text: " delivery model ",
                          style: TextStyle(color: Clr.pinkF76680)),
                      TextSpan(
                          text:
                              "helps you cut costs and deliver within budget."),
                    ])),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Transform.rotate(
                        angle: 90 * 3.14 / 180,
                        child: GradianBox(height: 5, width: 50)),
                    Expanded(
                      child: Text(
                        "Simform is quick to identify larger problem with the Software so we decided to expand our scope to build new modules",
                        style: TextStyle(
                            fontSize: 16,
                            color: Clr.pinkF76680,
                            fontWeight: FontWeight.w300),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ImageCard(
                  image: profileImage,
                )
              ],
            ),
          )),
          if (!isLeft)
            Expanded(
                child: Container(
              height: 500,
              padding: EdgeInsets.only(right: 80, top: 50, bottom: 50),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ))
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ImageCard extends StatelessWidget {
  String image;
  ImageCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              image,
              height: 45,
              width: 45,
            )),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Jeewa markram",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              "CEO",
              style: TextStyle(fontSize: 13),
            )
          ],
        )
      ],
    );
  }
}
