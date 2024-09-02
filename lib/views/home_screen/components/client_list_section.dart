import 'package:dw_web/constants/colors.dart';
import 'package:dw_web/constants/directory.dart';
import 'package:flutter/material.dart';

class ClientListSection extends StatelessWidget {
  const ClientListSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> clientList = [
      Dir.abcCompanyLogo,
      Dir.adClipsCompanyLogo,
      Dir.breakThroughCompanyLogo,
      Dir.pjcCompanyLogo,
      Dir.sampathCompanyLogo,
      Dir.techMateCompanyLogo,
      Dir.clickOredrCompanyLogo
    ];
    return Container(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        height: 150,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(color: Clr.pinkE7DAED, width: 1),
              bottom: BorderSide(color: Clr.pinkE7DAED, width: 1)),
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: clientList.length,
          itemBuilder: (context, index) {
            return SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(clientList[index]),
              ),
            );
          },
        ));
  }
}
