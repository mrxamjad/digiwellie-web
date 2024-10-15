import 'package:dw_web/constants/colors.dart';
import 'package:flutter/material.dart';

class NavBarSection extends StatelessWidget {
  const NavBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Adjust layout based on screen width
        if (constraints.maxWidth > 900) {
          // Desktop view
          return _buildDesktopNavBar();
        } else if (constraints.maxWidth > 600) {
          // Tablet view
          return _buildTabletNavBar();
        } else {
          // Mobile view
          return _buildMobileNavBar();
        }
      },
    );
  }

  // Desktop view
  Widget _buildDesktopNavBar() {
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

  // Tablet view
  Widget _buildTabletNavBar() {
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
          _navLinksWidgetTablet(),
          _contactButtonWidget(),
        ],
      ),
    );
  }

  // Mobile view with a simplified layout and a hamburger menu
  Widget _buildMobileNavBar() {
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
          _mobileMenuButton(),
        ],
      ),
    );
  }

  // Widget for the mobile menu button (Hamburger icon)
  Widget _mobileMenuButton() {
    return IconButton(
      icon: const Icon(Icons.menu, color: Colors.black),
      onPressed: () {
        // Show a bottom sheet or drawer with the navigation links on tap
        // You can implement a drawer or modal bottom sheet to show the links on mobile
      },
    );
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

  // Desktop and Tablet nav links
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

  // Tablet: Fewer links
  Widget _navLinksWidgetTablet() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _navLink("Services"),
        _navLink("Blog"),
        _navLink("Hire"),
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
}
