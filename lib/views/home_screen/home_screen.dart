import 'package:dw_web/views/home_screen/components/client_list_section.dart';
import 'package:dw_web/views/home_screen/components/header_section.dart';
import 'package:dw_web/views/home_screen/components/review_section.dart';

import 'package:flutter/material.dart';

import 'components/client_desc_section.dart';
import 'components/main_highlight_section.dart';
import 'components/service_offer_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _sectionList = const [
    // NavBarSection(),
    // MainHighlightSection(),
    // ServicesOfferSection(),
    // ClientDescSection(),
    ClientListSection(),
    ReviewSection(),
    Expanded(
      child: SelectableText("This last"),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _sectionList.length,
          itemBuilder: (context, index) {
            return _sectionList[index];
          }),
    );
  }
}
