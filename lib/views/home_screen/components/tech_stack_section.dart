import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TechStackSection extends StatefulWidget {
  const TechStackSection({Key? key}) : super(key: key);

  @override
  _TechStackSectionState createState() => _TechStackSectionState();
}

class _TechStackSectionState extends State<TechStackSection> {
  String? hoveredCategory;

  List<String> categories = [
    "Backend",
    "Frontend",
    "App",
    "Databases",
    "CMS",
    "CloudTesting",
    "DevOps"
  ];

  Map<String, List<String>> techStack = {
    // Define tech stacks for each category
  };

  Widget _buildTechLogo(String tech, double size) {
    bool isSvg = tech.toLowerCase().endsWith('.svg');

    if (isSvg) {
      return SvgPicture.network(
        tech,
        width: size,
        height: size,
        fit: BoxFit.contain,
        placeholderBuilder: (BuildContext context) => SizedBox(
          width: size,
          height: size,
          child: Center(child: null),
        ),
      );
    } else {
      return Image.network(
        tech,
        width: size,
        height: size,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) => SizedBox(
          width: size,
          height: size,
          child: null,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    hoveredCategory ??= "Backend"; // Default category

    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;

        // Determine layout configurations based on screen width
        bool isMobile = width < 600;
        bool isTablet = width >= 600 && width < 1200;
        // bool isDesktop = width >= 1200;

        double logoSize = isMobile
            ? 60
            : isTablet
                ? 70
                : 80;

        return Container(
          margin: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            children: [
              // Decorative bar
              Container(
                width: 70,
                height: 5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.purple.shade200, Colors.purple.shade400],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Title
              const Text(
                "Our",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w300),
              ),
              const Text(
                "Tech Stack",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),

              // Category tabs with hover effect
              isMobile
                  ? Column(
                      children: categories
                          .map((category) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    hoveredCategory = category;
                                  });
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    category,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: hoveredCategory == category
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color: hoveredCategory == category
                                          ? Colors.purple
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: categories
                          .map((category) => MouseRegion(
                                onEnter: (_) {
                                  setState(() {
                                    hoveredCategory = category;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Text(
                                    category,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: hoveredCategory == category
                                          ? FontWeight.bold
                                          : FontWeight.normal,
                                      color: hoveredCategory == category
                                          ? Colors.purple
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    ),
              const SizedBox(height: 40),

              // Tech stack logos
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: isMobile ? 10 : 20,
                    runSpacing: isMobile ? 10 : 20,
                    children: (techStack[hoveredCategory!] ?? [])
                        .map((tech) => _buildTechLogo(tech, logoSize))
                        .toList(),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
