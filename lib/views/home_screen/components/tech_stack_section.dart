import 'package:dw_web/components/gradiant_box.dart';
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
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          GradianBox(height: 5, width: 70),
          SizedBox(
            height: 20,
          ),
          Text(
            "Our",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w100),
          ),
          Text(
            "Tech Stack",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 60,
          ),
          SizedBox(
            height: 400,
            child: DefaultTabController(
              length: 6,
              child: Scaffold(
                appBar: AppBar(
                  bottom: const TabBar(
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
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                      itemCount: stackList.length,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 2),
                      itemBuilder: (context, index) {
                        return SizedBox(
                            width: 160,
                            height: 80,
                            child: Image.asset(stackList[index]));
                      }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
