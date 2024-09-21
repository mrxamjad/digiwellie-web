import 'package:dw_web/components/gradiant_box.dart';
import 'package:flutter/material.dart';

class DevelopmentWorkSection extends StatelessWidget {
  const DevelopmentWorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GradianBox(height: 5, width: 70),
          SizedBox(
            height: 20,
          ),
          Text(
            "How development",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w100),
          ),
          Text(
            "through Alcaline works",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            child: Column(
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: "#1 Assemble the right team"),
                  TextSpan(
                      text:
                          "We handle all aspects of vetting and choosing the right team that you don't have the time, expertise, or desire to do.")
                ]))
              ],
            ),
          )
        ],
      ),
    );
  }
}
