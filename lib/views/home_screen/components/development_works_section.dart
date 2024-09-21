import 'package:dw_web/components/gradiant_box.dart';
import 'package:dw_web/constants/colors.dart';
import 'package:flutter/material.dart';

class DevelopmentWorkSection extends StatelessWidget {
  const DevelopmentWorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 100),
      child: Column(
        children: [
          const GradianBox(height: 5, width: 70),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "How development",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w100),
          ),
          const Text(
            "through Alcaline works",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 60,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Spacer(),
                  DevCard(),
                  Spacer(),
                  DevCard(),
                  Spacer(),
                  DevCard(),
                  Spacer(
                    flex: 2,
                  )
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Spacer(
                    flex: 2,
                  ),
                  DevCard(),
                  Spacer(),
                  DevCard(),
                  Spacer(),
                  DevCard(),
                  Spacer()
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Container DevCard() {
    return Container(
      // height: 200,
      width: 350,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border:
              Border.all(color: Clr.black1718096.withOpacity(0.2), width: 2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "#1 ",
                style: TextStyle(
                    color: Clr.pinkF76680,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: "Assemble the right team",
                style: TextStyle(
                    color: Clr.black1A202C,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          ])),
          SizedBox(
            height: 20,
          ),
          Text(
            "We handle all aspects of vetting and choosing the right team that you don't have the time, expertise, or desire to do.",
            style: TextStyle(
                color: Clr.black1718096,
                fontSize: 14,
                fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
