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
            "A Website is an extension of yourself and we can help you to express it properly. Your website is your number one marketing asset because we live in a digital age."
      },
      {
        "title": "Mobile App Development",
        "icon_path": Dir.mobileIcon,
        "description":
            "A Website is an extension of yourself and we can help you to express it properly. Your website is your number one marketing asset because we live in a digital age."
      },
      {
        "title": "Software Testing Service",
        "icon_path": Dir.codeIcon,
        "description":
            "A Website is an extension of yourself and we can help you to express it properly. Your website is your number one marketing asset because we live in a digital age."
      },
      {
        "title": "AI Development",
        "description":
            "Unlock the power of artificial intelligence with our AI development services. We can help you build intelligent systems that automate tasks, analyze data, and make predictions.",
        "icon_path": Dir.webIcon
      },
      {
        "title": "Data Science Consulting",
        "description":
            "Leverage the potential of data with our data science consulting services. Our experts can help you extract valuable insights from your data and make data-driven decisions.",
        "icon_path": Dir.mobileIcon
      },
      {
        "title": "Database Management",
        "description":
            "Ensure efficient and secure data storage with our database management services. We can help you design, optimize, and maintain databases to meet your business needs.",
        "icon_path": Dir.codeIcon
      },
    ];

    double _screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 46),
      decoration: const BoxDecoration(
        color: Clr.whiteF9F9FF,
        border: Border(
            bottom: BorderSide(color: Clr.pinkE7DAED, width: 1),
            top: BorderSide(color: Clr.pinkE7DAED, width: 1)),
      ),
      child: Column(
        children: [
          _serviceOfferText(),
          const SizedBox(height: 60),
          _serviceListCard(_screenWidth, services)
        ],
      ),
    );
  }

  SizedBox _serviceListCard(
      double screenWidth, List<Map<String, dynamic>> services) {
    return SizedBox(
      height: 326,
      width: screenWidth,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: services.length,
        itemBuilder: (context, index) {
          return _serviceCard(index, services);
        },
      ),
    );
  }

  Widget _serviceCard(int index, List<Map<String, dynamic>> services) {
    bool? check;

    return InkWell(
      onHover: (value) {
        check = value;
        // print("Mouse Hovered: $value");
        setState(() {});
      },
      child: Container(
        height: 287,
        width: 333,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        margin:
            EdgeInsets.only(left: 20, right: 20, top: check ?? false ? 40 : 0),
        decoration: BoxDecoration(
            border: check ?? false
                ? Border.all(color: Clr.purple6675F7, width: 1)
                : null,
            color: Clr.white,
            borderRadius: const BorderRadius.all(Radius.circular(8))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 16,
            ),
            Container(
              alignment: Alignment.centerLeft,
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
            const SizedBox(
              height: 20,
            ),
            Text(
              services[index]["description"],
              style: const TextStyle(
                color: Clr.grey4A5568,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Text _serviceOfferText() {
    return const Text(
      "Services we offer",
      style: TextStyle(
          color: Clr.black1A202C, fontSize: 35, fontWeight: FontWeight.bold),
    );
  }
}
