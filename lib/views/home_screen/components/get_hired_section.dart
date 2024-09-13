import 'package:dw_web/components/gradiant_box.dart';
import 'package:dw_web/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GetHiredSection extends StatelessWidget {
  const GetHiredSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285,
      margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
      padding: const EdgeInsets.all(50),
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xffE4ECF7),
            Color(0xffF1F1F5),
          ]),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "Hire the best developers and designers around!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.rotate(
                          angle: 45 * 3.14 / 180,
                          child: GradianBox(height: 5, width: 50)),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Transform.rotate(
                            angle: 90 * 3.14 / 180,
                            child: GradianBox(height: 5, width: 50)),
                      ),
                      Transform.rotate(
                          angle: 135 * 3.14 / 180,
                          child: GradianBox(height: 5, width: 50)),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 250,
                    height: 55,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Clr.purple57007B,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        onPressed: () {},
                        child: Text(
                          "Hire Top Developers",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Clr.white),
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Transform.rotate(
                    angle: 180 * 3.14 / 180,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Transform.rotate(
                            angle: 45 * 3.14 / 180,
                            child: GradianBox(height: 5, width: 50)),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Transform.rotate(
                              angle: 90 * 3.14 / 180,
                              child: GradianBox(height: 5, width: 50)),
                        ),
                        Transform.rotate(
                            angle: 135 * 3.14 / 180,
                            child: GradianBox(height: 5, width: 50)),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
