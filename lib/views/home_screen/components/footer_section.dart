import 'package:dw_web/constants/colors.dart';
import 'package:dw_web/constants/directory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "DigiWellie",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "),
                      const SizedBox(
                        height: 20,
                      ),
                      Image.asset(Dir.google)
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Links",
                        style: TextStyle(
                            fontSize: 18,
                            color: Clr.black1718096,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "About Us",
                      style: TextStyle(fontSize: 16, color: Clr.black1718096),
                    ),
                    Text(
                      "Services",
                      style: TextStyle(fontSize: 16, color: Clr.black1718096),
                    ),
                    Text(
                      "Case Studies",
                      style: TextStyle(fontSize: 16, color: Clr.black1718096),
                    ),
                    Text(
                      "How it works",
                      style: TextStyle(fontSize: 16, color: Clr.black1718096),
                    ),
                    Text(
                      "Blog",
                      style: TextStyle(fontSize: 16, color: Clr.black1718096),
                    ),
                    Text(
                      "Careers",
                      style: TextStyle(fontSize: 16, color: Clr.black1718096),
                    ),
                    Text(
                      "Areas We Serve",
                      style: TextStyle(fontSize: 16, color: Clr.black1718096),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Contact us",
                          style: TextStyle(
                              fontSize: 18,
                              color: Clr.black1718096,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                        style: TextStyle(fontSize: 16, color: Clr.black1718096),
                      ),
                      Text(
                        "+923183561921",
                        style: TextStyle(fontSize: 16, color: Clr.black1718096),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  // color: Clr.black1718096,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(Dir.instagram),
                          Image.asset(Dir.linkenin),
                          Image.asset(Dir.facebook),
                          Image.asset(Dir.twitter)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Divider(
          height: 1,
          thickness: 2,
          color: Clr.black1718096.withOpacity(0.1),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
          child: Text(
            "© 2023 Copyright by IK Developers. All rights reserved.",
            style: TextStyle(fontSize: 14, color: Clr.black1718096),
          ),
        )
      ],
    );
  }
}
