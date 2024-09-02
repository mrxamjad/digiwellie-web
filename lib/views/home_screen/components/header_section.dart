import 'package:dw_web/constants/colors.dart';
import 'package:flutter/material.dart';

class NavBarSection extends StatelessWidget {
  const NavBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Clr.white,
          border:
              Border(bottom: BorderSide(color: Colors.grey[300]!, width: 1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _logoWidget(),
          _navLinksWidget(),
          _contactButtonWidget(),
        ],
      ),
    );
  }
}

Widget _logoWidget() {
  return Container(
    padding: const EdgeInsets.only(left: 20),
    child: const SelectableText(
      "DigiWellie",
      style: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    ),
  );
}

Widget _navLinksWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      _navLink("Services"),
      _navLink("Case Studies"),
      _navLink("Blog"),
      _navLink("How it Works"),
      _navLink("Hire")
    ],
  );
}

Widget _navLink(String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: SelectableText(
      text,
      style: const TextStyle(
          fontSize: 16, color: Clr.grey4A5568, fontWeight: FontWeight.w500),
    ),
  );
}

Widget _contactButtonWidget() {
  return Container(
    height: 42,
    width: 124,
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [Clr.purple6675F7, Clr.purple57007B],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
      ),
      borderRadius: BorderRadius.circular(5),
    ),
    child: const Center(
        child: SelectableText(
      "Contact us",
      style: TextStyle(
          fontSize: 14, color: Clr.white, fontWeight: FontWeight.w600),
    )),
  );
}
