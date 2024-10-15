import 'package:dw_web/constants/colors.dart';
import 'package:dw_web/constants/directory.dart';
import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;

        return Container(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
          color: const Color(0xFFF7F7FA),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Main Content
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: screenWidth < 600 // Mobile Layout
                    ? _buildMobileLayout()
                    : _buildDesktopOrTabletLayout(), // Desktop and Tablet Layout
              ),

              // Divider Line
              Divider(
                height: 1,
                thickness: 2,
                color: Clr.black1718096.withOpacity(0.1),
              ),

              // Copyright Text
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  "© 2023 DigiWellie Solutions. All rights reserved. Designed and developed by IK Developers.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Clr.black1718096.withOpacity(0.6),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "DigiWellie",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          "At DigiWellie, we specialize in crafting bespoke digital solutions that transform businesses. From cutting-edge web development to seamless mobile experiences, we’re here to turn your ideas into reality.",
          style: TextStyle(fontSize: 14, height: 1.5),
        ),
        const SizedBox(height: 20),
        Image.asset(Dir.google), // Company Logo

        const SizedBox(height: 40),

        const Text(
          "Explore",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        for (var link in [
          "About Us",
          "Services",
          "Case Studies",
          "Our Process",
          "Blog",
          "Careers",
          "Contact"
        ])
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: GestureDetector(
              onTap: () {
                // Navigate to respective page
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  link,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Clr.black1718096,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),

        const SizedBox(height: 40),

        const Text(
          "Get in Touch",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          "Have a project in mind? Let’s collaborate to bring your vision to life. Our team of experts is ready to elevate your business with world-class digital solutions.",
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 20),
        const Text(
          "+9188458928",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 10),
        const Text(
          "contact@digiwellie.com",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),

        const SizedBox(height: 40),

        const Text(
          "Follow Us",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            socialMediaIcon(Dir.instagram),
            socialMediaIcon(Dir.linkenin),
            socialMediaIcon(Dir.facebook),
            socialMediaIcon(Dir.twitter),
          ],
        ),
      ],
    );
  }

  Widget _buildDesktopOrTabletLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Company Info Section
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "DigiWellie",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "At DigiWellie, we specialize in crafting bespoke digital solutions that transform businesses. From cutting-edge web development to seamless mobile experiences, we’re here to turn your ideas into reality.",
                style: TextStyle(fontSize: 14, height: 1.5),
              ),
              const SizedBox(height: 20),
              Image.asset(Dir.google), // Company Logo
            ],
          ),
        ),

        // Useful Links Section
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Explore",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              for (var link in [
                "About Us",
                "Services",
                "Case Studies",
                "Our Process",
                "Blog",
                "Careers",
                "Contact"
              ])
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to respective page
                    },
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Text(
                        link,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Clr.black1718096,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),

        // Contact Information Section
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Get in Touch",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Have a project in mind? Let’s collaborate to bring your vision to life. Our team of experts is ready to elevate your business with world-class digital solutions.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                "+9188458928",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              Text(
                "contact@digiwellie.com",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),

        // Social Media Section
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Follow Us",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                socialMediaIcon(Dir.instagram),
                socialMediaIcon(Dir.linkenin),
                socialMediaIcon(Dir.facebook),
                socialMediaIcon(Dir.twitter),
              ],
            ),
          ],
        )
      ],
    );
  }

  // Social Media Icon Widget
  static Widget socialMediaIcon(String assetPath) {
    return GestureDetector(
      onTap: () {
        // Add link to respective social media
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Image.asset(
            assetPath,
            height: 30,
            width: 30,
          ),
        ),
      ),
    );
  }
}
