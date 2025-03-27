import 'dart:async';

import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:ecommarces_app/views/pages/categories/widget/categories_container.dart';
import 'package:ecommarces_app/views/pages/categories/widget/tab_bar_item.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  late String currentImage;
  final List<String> myList = [
    "assets/images/categories/sales.jpg",
    "assets/images/categories/summer sales.jpg",
    "assets/images/categories/stock.png",
    "assets/images/categories/gradient.jpg",
    "assets/images/categories/sale_bannar.jpg",
  ];

  int index = 0;
  @override
  void initState() {
    super.initState();
    currentImage = myList[index];
    Timer.periodic(Duration(seconds: 10), (timer) {
      setState(() {
        index = (index + 1) % myList.length;
        currentImage = myList[index];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "Categories",
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: 23, letterSpacing: 5),
            ),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Container(
                  height: screenHeight * 0.05,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.indigo[200],
                  ),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                      color: Colors.indigo[400],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.black54,
                    tabs: [
                      TabBarItem(title: "Women", count: 10),
                      TabBarItem(title: "Men", count: 5),
                      TabBarItem(title: "Kids", count: 15),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TabBarView(children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Container(
                        height: screenHeight * 0.12,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: AssetImage(currentImage)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      CategoriesContainer(),
                    ],
                  ),
                ),
              ),
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyCustomText(
                    tName: "Men Collection",
                    fWeight: FontWeight.w400,
                    fSize: 22,
                    letterSpacing: 3,
                  ),
                  MyCustomText(
                    tName: "No product found!",
                    fWeight: FontWeight.w300,
                    fSize: 16,
                    letterSpacing: 1,
                  ),
                ],
              )),
              Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyCustomText(
                    tName: "Kids Collection",
                    fWeight: FontWeight.w400,
                    fSize: 22,
                    letterSpacing: 3,
                  ),
                  MyCustomText(
                    tName: "No product found!",
                    fWeight: FontWeight.w300,
                    fSize: 16,
                    letterSpacing: 1,
                  ),
                ],
              )),
            ]),
          ),
        ));
  }
}
