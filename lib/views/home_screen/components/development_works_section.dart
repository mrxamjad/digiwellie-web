import 'package:dw_web/components/gradiant_box.dart';
import 'package:dw_web/constants/colors.dart';
import 'package:flutter/material.dart';

class DevelopmentWorkSection extends StatelessWidget {
  const DevelopmentWorkSection({super.key});

  final List<Map<String, String>> steps = const [
    {
      "step": "#1",
      "title": "Assemble the Right Team",
      "description":
          "We ensure a well-rounded, high-performance team by handling the recruitment, vetting, and assembly process. Our experts have the technical and creative skills to meet your project goals."
    },
    {
      "step": "#2",
      "title": "Research and Planning",
      "description":
          "A successful project begins with thorough research and detailed planning. We work closely with you to understand your vision and develop a roadmap tailored to your business needs."
    },
    {
      "step": "#3",
      "title": "Design and Prototyping",
      "description":
          "Our design team creates interactive prototypes that bring your vision to life. From UX/UI designs to wireframes, we ensure the designs are intuitive and user-friendly."
    },
    {
      "step": "#4",
      "title": "Agile Development",
      "description":
          "We use agile methodologies to ensure flexibility and adaptability. Through iterative sprints, we develop robust solutions that meet your changing requirements."
    },
    {
      "step": "#5",
      "title": "Quality Assurance",
      "description":
          "We conduct rigorous testing to ensure every feature works as expected. Our QA team performs both automated and manual testing to guarantee reliability and performance."
    },
    {
      "step": "#6",
      "title": "Launch and Support",
      "description":
          "Once everything is perfected, we launch your product and continue to offer support and maintenance. We help you scale and grow as your business evolves."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;

        // Breakpoints: <600: mobile, 600-1200: tablet, >1200: desktop
        if (screenWidth < 600) {
          return _buildMobileLayout(context);
        } else if (screenWidth < 1200) {
          return _buildTabletLayout(context);
        } else {
          return _buildDesktopLayout(context);
        }
      },
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      children: [
        const GradianBox(height: 5, width: 70),
        const SizedBox(height: 20),
        const Text(
          "How development",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w100),
        ),
        const Text(
          "through DigiWellie works",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 40),
        Wrap(
          spacing: 20,
          runSpacing: 20,
          alignment: WrapAlignment.center,
          children: steps
              .map((step) => DevCard(
                    step: step["step"]!,
                    title: step["title"]!,
                    description: step["description"]!,
                  ))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildTabletLayout(BuildContext context) {
    return Column(
      children: [
        const GradianBox(height: 5, width: 70),
        const SizedBox(height: 20),
        const Text(
          "How development",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
        ),
        const Text(
          "through DigiWellie works",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 60),
        Wrap(
          spacing: 30,
          runSpacing: 40,
          alignment: WrapAlignment.center,
          children: steps
              .map((step) => SizedBox(
                    width: 300,
                    child: DevCard(
                      step: step["step"]!,
                      title: step["title"]!,
                      description: step["description"]!,
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Column(
      children: [
        const GradianBox(height: 5, width: 70),
        const SizedBox(height: 20),
        const Text(
          "How development",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w100),
        ),
        const Text(
          "through DigiWellie works",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 60),
        Column(
          children: [
            // First Row of Cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Spacer(),
                DevCard(
                  step: steps[0]["step"]!,
                  title: steps[0]["title"]!,
                  description: steps[0]["description"]!,
                ),
                const Spacer(),
                DevCard(
                  step: steps[1]["step"]!,
                  title: steps[1]["title"]!,
                  description: steps[1]["description"]!,
                ),
                const Spacer(),
                DevCard(
                  step: steps[2]["step"]!,
                  title: steps[2]["title"]!,
                  description: steps[2]["description"]!,
                ),
                const Spacer(flex: 2),
              ],
            ),
            const SizedBox(height: 100),
            // Second Row of Cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Spacer(flex: 2),
                DevCard(
                  step: steps[3]["step"]!,
                  title: steps[3]["title"]!,
                  description: steps[3]["description"]!,
                ),
                const Spacer(),
                DevCard(
                  step: steps[4]["step"]!,
                  title: steps[4]["title"]!,
                  description: steps[4]["description"]!,
                ),
                const Spacer(),
                DevCard(
                  step: steps[5]["step"]!,
                  title: steps[5]["title"]!,
                  description: steps[5]["description"]!,
                ),
                const Spacer(),
              ],
            ),
          ],
        )
      ],
    );
  }
}

class DevCard extends StatelessWidget {
  final String step;
  final String title;
  final String description;

  const DevCard({
    super.key,
    required this.step,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 350,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Clr.black1718096.withOpacity(0.2), width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$step ",
                  style: const TextStyle(
                    color: Clr.pinkF76680,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: title,
                  style: const TextStyle(
                    color: Clr.black1A202C,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: const TextStyle(
              color: Clr.black1718096,
              fontSize: 14,
              fontWeight: FontWeight.normal,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
