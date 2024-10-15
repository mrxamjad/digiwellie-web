import 'package:flutter/material.dart';
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
          const SizedBox(height: 50),
          const GradianBox(height: 5, width: 70),
          const SizedBox(height: 20),
          const Text(
            "Way of building",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w100),
          ),
          const Text(
            "Great Software",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 60),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 1200) {
                // Desktop layout
                return Column(
                  children: [
                    ImageCardWidget(
                      imagePath: Dir.scalBoard,
                      profileImage: Dir.profile1,
                    ),
                    ImageCardWidget(
                      imagePath: Dir.scalBoard2,
                      profileImage: Dir.profile2,
                      isLeft: true,
                    ),
                    ImageCardWidget(
                      imagePath: Dir.scalBoard3,
                      profileImage: Dir.profile3,
                    ),
                  ],
                );
              } else if (constraints.maxWidth > 600) {
                // Tablet layout
                return Column(
                  children: [
                    ImageCardWidget(
                      imagePath: Dir.scalBoard,
                      profileImage: Dir.profile1,
                    ),
                    ImageCardWidget(
                      imagePath: Dir.scalBoard2,
                      profileImage: Dir.profile2,
                      isLeft: true,
                    ),
                    ImageCardWidget(
                      imagePath: Dir.scalBoard3,
                      profileImage: Dir.profile3,
                    ),
                  ],
                );
              } else {
                // Mobile layout
                return Column(
                  children: [
                    ImageCardWidget(
                      imagePath: Dir.scalBoard,
                      profileImage: Dir.profile1,
                      isMobile: true,
                    ),
                    ImageCardWidget(
                      imagePath: Dir.scalBoard2,
                      profileImage: Dir.profile2,
                      isMobile: true,
                    ),
                    ImageCardWidget(
                      imagePath: Dir.scalBoard3,
                      profileImage: Dir.profile3,
                      isMobile: true,
                    ),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Container ImageCardWidget({
    required String imagePath,
    required String profileImage,
    bool isLeft = false,
    bool isMobile = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: isMobile
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Build the right team to scale",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Finding the right talent is not easy. We help you find the talent that suits your needs, follows your processes, and sticks with you long term (not the case with freelancers).",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                              fontSize: 16, color: Clr.black1718096),
                          children: [
                            const TextSpan(text: "Our"),
                            TextSpan(
                              text: " delivery model ",
                              style: TextStyle(color: Clr.pinkF76680),
                            ),
                            const TextSpan(
                              text:
                                  "helps you cut costs and deliver within budget.",
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Transform.rotate(
                            angle: 90 * 3.14 / 180,
                            child: const GradianBox(height: 5, width: 50),
                          ),
                          Expanded(
                            child: Text(
                              "Simform is quick to identify larger problems with the Software so we decided to expand our scope to build new modules.",
                              style: TextStyle(
                                fontSize: 14,
                                color: Clr.pinkF76680,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ImageCard(
                        image: profileImage,
                      ),
                    ],
                  ),
                ],
              ),
            )
          : Row(
              children: [
                if (isLeft)
                  Expanded(
                    child: Container(
                      height: 500,
                      padding:
                          const EdgeInsets.only(left: 80, top: 50, bottom: 50),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 80, right: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Build the right team to scale",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          "Finding the right talent is not easy. We help you find the talent that suits your needs, follows your processes, and sticks with you long term (not the case with freelancers).",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(height: 20),
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                                fontSize: 18, color: Clr.black1718096),
                            children: [
                              const TextSpan(text: "Our"),
                              TextSpan(
                                text: " delivery model ",
                                style: TextStyle(color: Clr.pinkF76680),
                              ),
                              const TextSpan(
                                text:
                                    "helps you cut costs and deliver within budget.",
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            Transform.rotate(
                              angle: 90 * 3.14 / 180,
                              child: const GradianBox(height: 5, width: 50),
                            ),
                            Expanded(
                              child: Text(
                                "Simform is quick to identify larger problems with the Software so we decided to expand our scope to build new modules.",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Clr.pinkF76680,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        ImageCard(
                          image: profileImage,
                        ),
                      ],
                    ),
                  ),
                ),
                if (!isLeft)
                  Expanded(
                    child: Container(
                      height: 500,
                      padding:
                          const EdgeInsets.only(right: 80, top: 50, bottom: 50),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String image;
  const ImageCard({
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
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Jeewa markram",
              style: TextStyle(fontSize: 16),
            ),
            Text(
              "CEO",
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
      ],
    );
  }
}
