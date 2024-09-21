import 'package:dw_web/components/gradiant_box.dart';
import 'package:dw_web/constants/colors.dart';
import 'package:dw_web/constants/directory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CaseStudySection extends StatelessWidget {
  const CaseStudySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, bottom: 50),
      decoration: BoxDecoration(
          color: Color(0xffF7F7FA),
          border: Border(
              bottom:
                  BorderSide(color: Clr.grey4A5568.withOpacity(0.1), width: 2),
              top: BorderSide(
                  color: Clr.grey4A5568.withOpacity(0.1), width: 2))),
      child: const Column(
        children: [
          GradianBox(height: 5, width: 70),
          SizedBox(
            height: 20,
          ),
          Text(
            "Our Recent",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w100),
          ),
          Text(
            "Case studies",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 60,
          ),
          ImageCaseStudy(
            color: Color(0xffE7DAED),
            image: Dir.case1,
          ),
          SizedBox(
            height: 40,
          ),
          ImageCaseStudy(
            color: Color(0xffF0FFF7),
            image: Dir.case2,
          ),
          SizedBox(
            height: 40,
          ),
          ImageCaseStudy(
            color: Color(0xffFFF4F4),
            image: Dir.case3,
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Read more case studies",
                  style: TextStyle(fontSize: 20, color: Clr.purple57007B),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Clr.purple57007B,
                  size: 24,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ImageCaseStudy extends StatelessWidget {
  final String image;
  final Color color;
  const ImageCaseStudy({
    super.key,
    required this.image,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 410,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      // decoration: BoxDecoration(color: color),
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          )),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: color,
                border: Border(
                    right: BorderSide(
                        color: Clr.grey4A5568.withOpacity(0.1), width: 2),
                    top: BorderSide(
                      color: Clr.grey4A5568.withOpacity(0.1),
                      width: 2,
                    ),
                    bottom: BorderSide(
                        color: Clr.grey4A5568.withOpacity(
                          0.1,
                        ),
                        width: 2)),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            padding: const EdgeInsets.only(right: 50, left: 50),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  "Website Design for SCFC Canada",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Born out of a vision, a single-minded objective that puts service before anything else, Swift Clearance and Forwarding Corp. surging forth to deliver the best services in the shipping and logistics scenario. Its meteoric rise stems out of a solid foundation. The management boasts of over 20 years of rich and varied experience in the shipping and freight forwarding industry.",
                  style: TextStyle(fontSize: 14, color: Clr.black1A202C),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Read more",
                      style: TextStyle(fontSize: 14, color: Clr.purple57007B),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Clr.purple57007B,
                      size: 14,
                    )
                  ],
                ),
                Spacer()
              ],
            ),
          ))
        ],
      ),
    );
  }
}
