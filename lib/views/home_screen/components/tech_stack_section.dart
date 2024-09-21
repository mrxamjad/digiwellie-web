import 'package:dw_web/components/gradiant_box.dart';
import 'package:dw_web/constants/colors.dart';
import 'package:dw_web/constants/directory.dart';
import 'package:flutter/material.dart';

class TechStackSection extends StatelessWidget {
  const TechStackSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> stackList = [
      Dir.go,
      Dir.java,
      Dir.mysql,
      Dir.mongoo,
      Dir.netCore,
      Dir.nodejs,
      Dir.php,
      Dir.python,
      Dir.ruby
    ];
    return Container(
      margin: const EdgeInsets.only(bottom: 100),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const GradianBox(height: 5, width: 70),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Our",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w100),
          ),
          const Text(
            "Tech Stack",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 400,
            child: DefaultTabController(
              length: 6,
              child: Scaffold(
                appBar: AppBar(
                  bottom: const TabBar(
                    dividerColor: Clr.black1718096,
                    dividerHeight: 0,
                    tabs: [
                      Tab(
                          icon: Text(
                        "Backend",
                        style: TextStyle(fontSize: 18),
                      )),
                      Tab(
                          icon:
                              Text("Frontend", style: TextStyle(fontSize: 18))),
                      Tab(
                          icon: Text("Databases",
                              style: TextStyle(fontSize: 18))),
                      Tab(icon: Text("CMS", style: TextStyle(fontSize: 18))),
                      Tab(
                          icon: Text("CloudTesting",
                              style: TextStyle(fontSize: 18))),
                      Tab(icon: Text("DevOps", style: TextStyle(fontSize: 18))),
                    ],
                  ),
                ),
                body: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 200),
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 6),
                    itemBuilder: (_, index) => Image.asset(
                      stackList[index],
                    ),
                    itemCount: stackList.length,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
