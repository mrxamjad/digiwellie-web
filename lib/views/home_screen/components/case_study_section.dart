import 'package:flutter/material.dart';
import 'package:dw_web/components/gradiant_box.dart';
import 'package:dw_web/constants/colors.dart';
import 'package:dw_web/constants/directory.dart';

class CaseStudySection extends StatelessWidget {
  const CaseStudySection({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> caseStudies = const [
    {
      "title": "Website Design for SCFC Canada",
      "description":
          "SCFC Canada, a leading force in the shipping and logistics industry, approached us with a complex challenge: their online presence didn't reflect the scale and professionalism of their operations. Our goal was to design a website that not only looked stunning but also captured their 20-year legacy in the industry.\n\n"
              "We worked closely with their management team to distill their vision and brand values into a digital experience. Our design was centered around bold visuals, intuitive navigation, and seamless user interaction.",
      "color": Color(0xffE7DAED),
      "image": Dir.case1
    },
    {
      "title": "UI/UX Redesign for TechLabs",
      "description":
          "TechLabs, a pioneer in the tech innovation space, needed a UI/UX overhaul that could keep up with their rapidly evolving product line. Their existing user interface was functional but outdated, and they were losing ground to competitors with sleeker, more user-friendly designs.\n\n"
              "Our team embarked on a thorough research phase, analyzing user behavior, mapping customer journeys, and identifying pain points in the current design. With a focus on minimalism and performance, we introduced a fresh design with modern visual elements and simplified navigation paths.",
      "color": Color(0xffF0FFF7),
      "image": Dir.case2
    },
    {
      "title": "Brand Development for GreenGo",
      "description":
          "GreenGo, a startup committed to sustainability, came to us with an exciting yet challenging mission: to create a brand identity that resonated with eco-conscious consumers while standing out in the crowded green industry. They needed more than just a logo—they needed a full-fledged brand story that would connect emotionally with their target audience.\n\n"
              "We began by delving deep into their core values and vision. After conducting extensive market research, we developed a brand identity that was clean, fresh, and reflective of GreenGo's mission to make sustainability accessible to everyone. This included logo design, color palette selection, typography, and a comprehensive branding guide.",
      "color": Color(0xffFFF4F4),
      "image": Dir.case3
    }
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return _buildDesktopLayout(context);
        } else if (constraints.maxWidth > 600) {
          return _buildTabletLayout(context);
        } else {
          return _buildMobileLayout(context);
        }
      },
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      decoration: BoxDecoration(
        color: const Color(0xffF7F7FA),
        border: Border(
          bottom: BorderSide(color: Clr.grey4A5568.withOpacity(0.1), width: 2),
          top: BorderSide(color: Clr.grey4A5568.withOpacity(0.1), width: 2),
        ),
      ),
      child: Column(
        children: [
          _buildHeader(),
          const SizedBox(height: 60),
          ...caseStudies.map((caseStudy) => Column(
                children: [
                  ImageCaseStudy(
                    color: caseStudy["color"],
                    image: caseStudy["image"],
                    title: caseStudy["title"],
                    description: caseStudy["description"],
                  ),
                  const SizedBox(height: 40),
                ],
              )),
          const SizedBox(height: 50),
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildTabletLayout(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: BoxDecoration(
        color: const Color(0xffF7F7FA),
        border: Border(
          bottom: BorderSide(color: Clr.grey4A5568.withOpacity(0.1), width: 2),
          top: BorderSide(color: Clr.grey4A5568.withOpacity(0.1), width: 2),
        ),
      ),
      child: Column(
        children: [
          _buildHeader(),
          const SizedBox(height: 40),
          ...caseStudies.map((caseStudy) => Column(
                children: [
                  ImageCaseStudy(
                    color: caseStudy["color"],
                    image: caseStudy["image"],
                    title: caseStudy["title"],
                    description: caseStudy["description"],
                    isMobile: true,
                  ),
                  const SizedBox(height: 30),
                ],
              )),
          const SizedBox(height: 30),
          _buildFooter(),
        ],
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: const Color(0xffF7F7FA),
        border: Border(
          bottom: BorderSide(color: Clr.grey4A5568.withOpacity(0.1), width: 2),
          top: BorderSide(color: Clr.grey4A5568.withOpacity(0.1), width: 2),
        ),
      ),
      child: Column(
        children: [
          _buildHeader(),
          const SizedBox(height: 30),
          ...caseStudies.map((caseStudy) => Column(
                children: [
                  ImageCaseStudy(
                    color: caseStudy["color"],
                    image: caseStudy["image"],
                    title: caseStudy["title"],
                    description: caseStudy["description"],
                    isMobile: true,
                  ),
                  const SizedBox(height: 20),
                ],
              )),
          const SizedBox(height: 20),
          _buildFooter(isMobile: true),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        const GradianBox(height: 5, width: 70),
        const SizedBox(height: 20),
        const Text(
          "Our Recent",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w100),
        ),
        const Text(
          "Case Studies",
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildFooter({bool isMobile = false}) {
    return Padding(
      padding: EdgeInsets.only(right: isMobile ? 20 : 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Discover more case studies",
            style: TextStyle(
                fontSize: isMobile ? 16 : 20, color: Clr.purple57007B),
          ),
          const SizedBox(width: 10),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Clr.purple57007B,
            size: isMobile ? 20 : 24,
          )
        ],
      ),
    );
  }
}

class ImageCaseStudy extends StatelessWidget {
  final String image;
  final Color color;
  final String title;
  final String description;
  final bool isTablet;
  final bool isMobile;

  const ImageCaseStudy({
    Key? key,
    required this.image,
    required this.color,
    required this.title,
    required this.description,
    this.isTablet = false,
    this.isMobile = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isMobile) {
      return _buildMobileLayout();
    } else if (isTablet) {
      return _buildTabletLayout();
    } else {
      return _buildDesktopLayout();
    }
  }

  Widget _buildDesktopLayout() {
    return Container(
      height: 410,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: _buildContentContainer(),
          ),
        ],
      ),
    );
  }

  Widget _buildTabletLayout() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              height: 300,
            ),
          ),
          Expanded(
            flex: 2,
            child: _buildContentContainer(isMobile: true),
          ),
        ],
      ),
    );
  }

  Widget _buildMobileLayout() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
            height: 200,
          ),
          const SizedBox(height: 15),
          _buildContentContainer(isMobile: true),
        ],
      ),
    );
  }

  Widget _buildContentContainer(
      {bool isTablet = false, bool isMobile = false}) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: Border(
          left: BorderSide(color: Clr.grey4A5568.withOpacity(0.1), width: 2),
          top: BorderSide(color: Clr.grey4A5568.withOpacity(0.1), width: 2),
          bottom: BorderSide(color: Clr.grey4A5568.withOpacity(0.1), width: 2),
          right: BorderSide(color: Clr.grey4A5568.withOpacity(0.1), width: 2),
        ),
        // Apply corner radius only on mobile
        borderRadius: isMobile ? BorderRadius.circular(30) : BorderRadius.zero,
      ),
      padding: EdgeInsets.all(isMobile ? 15 : 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: isMobile ? 22 : 28,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            description,
            style:
                TextStyle(fontSize: isMobile ? 12 : 14, color: Clr.black1A202C),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Explore the story",
                style: TextStyle(
                    fontSize: isMobile ? 12 : 14, color: Clr.purple57007B),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Clr.purple57007B,
                size: isMobile ? 12 : 14,
              )
            ],
          ),
        ],
      ),
    );
  }
}
