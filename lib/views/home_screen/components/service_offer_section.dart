import 'package:dw_web/constants/colors.dart';
import 'package:dw_web/constants/directory.dart';
import 'package:flutter/material.dart';

class ServicesOfferSection extends StatefulWidget {
  const ServicesOfferSection({super.key});

  @override
  State<ServicesOfferSection> createState() => _ServicesOfferSectionState();
}

class _ServicesOfferSectionState extends State<ServicesOfferSection> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> services = [
      {
        "title": "Web Design & Development",
        "icon_path": Dir.webIcon,
        "description":
            "Your website is the digital face of your brand, and we craft it to perfection. Let us help you create a captivating online presence that drives your business forward."
      },
      {
        "title": "Mobile App Development",
        "icon_path": Dir.mobileIcon,
        "description":
            "Transform your ideas into sleek, user-friendly mobile apps. We bring innovation and functionality to your fingertips, ensuring your app stands out in today’s mobile-first world."
      },
      {
        "title": "Software Testing Service",
        "icon_path": Dir.codeIcon,
        "description":
            "Quality is key. With our thorough software testing services, we ensure your product works flawlessly, delivering a smooth user experience without the headaches."
      },
      {
        "title": "AI Development",
        "description":
            "Harness the future with AI. From automating tasks to smart predictions, our AI development services will propel your business into the next era of intelligence.",
        "icon_path": Dir.webIcon
      },
      {
        "title": "Data Science Consulting",
        "description":
            "Unlock the full potential of your data with our expert consulting. We transform complex data into actionable insights, empowering smarter business decisions.",
        "icon_path": Dir.mobileIcon
      },
      {
        "title": "Database Management",
        "description":
            "Keep your data safe, optimized, and accessible with our database management solutions. We ensure your systems are built for performance and security at every level.",
        "icon_path": Dir.codeIcon
      },
    ];

    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth = screenWidth < 600 ? 300 : 350;
    double fontSize = screenWidth < 600 ? 18 : 20;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 46),
      decoration: const BoxDecoration(
        color: Clr.whiteF9F9FF,
        border: Border(
          bottom: BorderSide(color: Clr.pinkE7DAED, width: 1),
          top: BorderSide(color: Clr.pinkE7DAED, width: 1),
        ),
      ),
      child: Column(
        children: [
          _serviceOfferText(fontSize),
          const SizedBox(height: 40),
          _serviceListCard(cardWidth, services),
        ],
      ),
    );
  }

  // Responsive List with horizontal scroll
  SizedBox _serviceListCard(
      double cardWidth, List<Map<String, dynamic>> services) {
    return SizedBox(
      height: 326,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: services.length,
        itemBuilder: (context, index) {
          return _serviceCard(index, services, cardWidth);
        },
      ),
    );
  }

  // Service card with responsive width
  Widget _serviceCard(
      int index, List<Map<String, dynamic>> services, double cardWidth) {
    return Container(
      height: 287,
      width: cardWidth, // Responsive width
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        color: Clr.white,
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Clr.purple6675F7, width: 1),
            ),
            child: Center(
              child: Image.asset(
                services[index]["icon_path"],
                height: 32,
                width: 32,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            services[index]["title"],
            style: const TextStyle(
                color: Clr.black1A202C,
                fontSize: 20,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 20),
          Text(
            services[index]["description"],
            style: const TextStyle(
              color: Clr.grey4A5568,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  // Service Offer Section Title
  Text _serviceOfferText(double fontSize) {
    return Text(
      "Transforming Ideas into Reality",
      style: TextStyle(
          color: Clr.black1A202C,
          fontSize: fontSize,
          fontWeight: FontWeight.bold),
    );
  }
}
