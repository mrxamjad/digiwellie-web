import 'package:dw_web/components/gradiant_box.dart';
import 'package:dw_web/constants/colors.dart';
import 'package:dw_web/constants/directory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DevelopmentApproachSection extends StatelessWidget {
  const DevelopmentApproachSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xffF7F7FA),
          border: Border(
              bottom:
                  BorderSide(color: Clr.grey4A5568.withOpacity(0.1), width: 2),
              top: BorderSide(
                  color: Clr.grey4A5568.withOpacity(0.1), width: 2))),
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
            "Our design and",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w100),
          ),
          Text(
            "development approach",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 800,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 30,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 234),
                  itemBuilder: (context, index) {
                    return SizedBox(height: 200, child: ServiceCard());
                  }),
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        border: Border.all(color: Clr.grey4A5568.withOpacity(0.1), width: 2),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Clr.pinkF76680, borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              Dir.abcCompanyLogo,
              height: 34,
              width: 34,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "UX Driven Engineering",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Unlike other companies, we are a UX first development company. Projects are driven by designers and they make sure design and experiences translate to code.",
                  style: TextStyle(fontSize: 14),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
