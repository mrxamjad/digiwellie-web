import 'package:dw_web/components/gradiant_box.dart';
import 'package:dw_web/constants/colors.dart';
import 'package:dw_web/constants/directory.dart';
import 'package:flutter/material.dart';

class DevelopmentApproachSection extends StatelessWidget {
  DevelopmentApproachSection({super.key});

  final List<Map<String, dynamic>> services = const [
    {
      "title": "UX Driven Engineering",
      "description":
          "We prioritize user experience at every step. Our projects are led by designers who ensure the final product not only functions seamlessly but delivers an intuitive, human-centered experience.",
      "icon": Dir.codeIcon,
      "color": Color(0xffF76680),
    },
    {
      "title": "Agile Development",
      "description":
          "Our agile methodology ensures flexibility and faster delivery. We work in short, iterative cycles to adapt quickly to changes.",
      "icon": Dir.codeIcon,
      "color": Color(0xff50B4D4),
    },
    {
      "title": "Scalable Solutions",
      "description":
          "We design and build for the future. Our solutions are built to scale with your business, ensuring peak performance and reliability.",
      "icon": Dir.codeIcon,
      "color": Color(0xffFFD166),
    },
    {
      "title": "Cloud Integration",
      "description":
          "By integrating cloud solutions, we enable businesses to streamline processes and enhance collaboration.",
      "icon": Dir.codeIcon,
      "color": Color(0xffB565A7),
    },
    {
      "title": "Data-Driven Decisions",
      "description":
          "We create intelligent, data-driven systems that guide business decisions and optimize processes.",
      "icon": Dir.codeIcon,
      "color": Color(0xff4CAF50),
    },
    {
      "title": "Continuous Support",
      "description":
          "We believe in long-term partnerships. Our team provides ongoing support to ensure your products evolve alongside your business.",
      "icon": Dir.codeIcon,
      "color": Color(0xffFF6F61),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffF7F7FA),
        border: Border.symmetric(
          horizontal:
              BorderSide(color: Clr.grey4A5568.withOpacity(0.1), width: 2),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 50),
          const GradianBox(height: 5, width: 70),
          const SizedBox(height: 20),
          const Text(
            "Our design and",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w100),
          ),
          const Text(
            "development approach",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 60),
          LayoutBuilder(
            builder: (context, constraints) {
              int columns = _getColumns(constraints.maxWidth);

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: services.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: columns,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 260, // Consistent card height
                  ),
                  itemBuilder: (context, index) {
                    final service = services[index];
                    return ServiceCard(
                      title: service["title"],
                      description: service["description"],
                      icon: service["icon"],
                      color: service["color"],
                    );
                  },
                ),
              );
            },
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  int _getColumns(double width) {
    if (width > 1200) {
      return 3; // Desktop
    } else if (width > 800) {
      return 2; // Tablet
    } else {
      return 1; // Mobile
    }
  }
}

class ServiceCard extends StatelessWidget {
  final String title;
  final String description;
  final String icon;
  final Color color;

  const ServiceCard({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xffFAFAFA),
        border: Border.all(color: Clr.grey4A5568.withOpacity(0.1), width: 2),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.05),
            blurRadius: 8,
            spreadRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: color.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(icon, height: 34, width: 34),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  description,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
