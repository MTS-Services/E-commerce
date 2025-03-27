
import 'package:ecommarces_app/components/my_custom_button.dart';
import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:ecommarces_app/model/data/new_fashion.dart';
import 'package:ecommarces_app/views/pages/home/widget/my_custom_product_container.dart';
import 'package:ecommarces_app/views/pages/womenTops/women_tops_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: screenHeight * 0.70,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/homeImage/Big Banner.png",
                      ),
                      fit: BoxFit.fitHeight)),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 40, left: 10),
                child: Column(
                  spacing: 8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyCustomText(
                      tName: "Fashion \nsale",
                      fSize: 40,
                      fWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    MyCustomButton(
                      tName: "check",
                      width: screenWidth * 0.40,
                      fontSize: 18,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyCustomText(
                        tName: "New",
                        fWeight: FontWeight.w800,
                        fSize: 40,
                        color: Colors.black,
                      ),
                      MyCustomText(
                        tName: "You’ve never seen it before!",
                        color: Colors.grey[400],
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(WomenTopsPages());
                    },
                    child: MyCustomText(
                      tName: "View all",
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 330,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  primary: false,
                  physics: ScrollPhysics(),
                  itemCount: newFashion.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: MyCustomProductContainer(
                        image: newFashion[index].imagePath,
                        people: newFashion[index].people,
                        pName: newFashion[index].pName,
                        pPrice: newFashion[index].pPrice,
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
