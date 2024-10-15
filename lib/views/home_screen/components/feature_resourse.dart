import 'package:dw_web/components/gradiant_box.dart';
import 'package:dw_web/constants/colors.dart';
import 'package:dw_web/constants/directory.dart';
import 'package:flutter/material.dart';

class FeatureResourceSection extends StatelessWidget {
  const FeatureResourceSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> resources = [
      {
        "image": Dir.resourse1,
        "title":
            "How to Build a Scalable Application up to 1 Million Users on AWS"
      },
      {
        "image": Dir.resourse2,
        "title": "Step-by-step Guide to Microservices Architecture"
      },
      {
        "image": Dir.resourse3,
        "title":
            "AI and Machine Learning: Integrating Models into Real Products"
      },
      {
        "image": Dir.resourse4,
        "title": "Cloud Infrastructure Setup for Enterprise Solutions"
      },
      {
        "image": Dir.resourse5,
        "title": "Building Cross-Platform Mobile Apps with Flutter"
      }
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      decoration: BoxDecoration(
        color: const Color(0xffF7F7FA),
        border: Border(
            bottom:
                BorderSide(color: Clr.grey4A5568.withOpacity(0.1), width: 2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const GradianBox(height: 5, width: 70),
          const SizedBox(height: 20),
          const Text(
            "Feature",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w100),
          ),
          const Text(
            "Resources",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 60),
          SizedBox(
            height: 320,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: resources.length,
              itemBuilder: (context, index) {
                return ResourceImageCard(
                  imagePath: resources[index]["image"]!,
                  title: resources[index]["title"]!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ResourceImageCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const ResourceImageCard({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Implement navigation to resource details or content
      },
      child: Container(
        width: 254,
        height: 315,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.15),
              blurRadius: 10,
              spreadRadius: 5,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Stack(
          children: [
            // Image with Overlay
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            // Gradient Overlay
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            // Title and Action Button
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          // Handle "Read More" action
                        },
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          backgroundColor: Colors.white.withOpacity(0.2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Row(
                          children: const [
                            Text(
                              "Read More",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.arrow_forward,
                                color: Colors.white, size: 16),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
