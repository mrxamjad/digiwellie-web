import 'package:dw_web/components/gradiant_box.dart';
import 'package:dw_web/constants/colors.dart';
import 'package:dw_web/constants/directory.dart';
import 'package:flutter/material.dart';

class FeatureResourseSection extends StatelessWidget {
  const FeatureResourseSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> resourses = [
      Dir.resourse1,
      Dir.resourse2,
      Dir.resourse3,
      Dir.resourse4,
      Dir.resourse5
    ];
    return Container(
      child: Column(
        children: [
          GradianBox(height: 5, width: 70),
          SizedBox(
            height: 20,
          ),
          Text(
            "Feature",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w100),
          ),
          Text(
            "Resources",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 320,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: resourses.length,
                itemBuilder: (context, index) {
                  return ResourseImageCard(
                    imagesPath: resourses[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}

class ResourseImageCard extends StatelessWidget {
  final String imagesPath;
  const ResourseImageCard({
    super.key,
    required this.imagesPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 254,
      height: 315,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Image.asset(
            imagesPath,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text(
                "How to Build a Scalable Application up to 1 Million Users on AWS",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Read More",
                    style: TextStyle(color: Clr.purple57007B),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Clr.purple57007B,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
