
import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:ecommarces_app/controller/getx/ui/women_taps_page.dart';
import 'package:ecommarces_app/model/data/women_tops.dart';
import 'package:ecommarces_app/views/pages/womenTops/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

class WomenTopsPages extends StatefulWidget {
  const WomenTopsPages({super.key});

  @override
  State<WomenTopsPages> createState() => _WomenTopsPagesState();
}

class _WomenTopsPagesState extends State<WomenTopsPages> {
  double rating = 0.0;
  final WomenTopsController controller = Get.put(WomenTopsController());
  final List<String> items = List.generate(20, (index) => "Item $index");
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: CustomAppbar(),
        body: Obx(() {
          return controller.isGridView.value
              ? GridView.builder(
                  padding: EdgeInsets.all(8),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.5,
                  ),
                  itemCount: womenTops.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Get.to(RatingsReviewPage());
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.topLeft,
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: screenHeight * 0.20,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.fitHeight,
                                      image: AssetImage(
                                        womenTops[index].imagePath,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Center(
                                    child: MyCustomText(
                                      tName: "-20%",
                                      color: Colors.white,
                                      fSize: 10,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 130,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Center(
                                      child: Icon(
                                        Icons.favorite_border,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      RatingBar.builder(
                                          initialRating: rating,
                                          itemCount: 5,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemSize: 18,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 2.0),
                                          itemBuilder: (context, _) {
                                            return Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            );
                                          },
                                          onRatingUpdate: (rating) {
                                            setState(() {
                                              rating = rating;
                                            });
                                          }),
                                      MyCustomText(tName: " ($rating)"),
                                    ],
                                  ),
                                  MyCustomText(
                                    tName: womenTops[index].subtitleName,
                                    color: Colors.grey[300],
                                    fSize: 16,
                                  ),
                                  MyCustomText(
                                    tName: womenTops[index].titleName,
                                    color: Colors.black,
                                    fSize: 20,
                                  ),
                                  MyCustomText(
                                    tName: womenTops[index].productPrice,
                                    color: Colors.black,
                                    fSize: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              : ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: womenTops.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Get.to(RatingsReviewPage());
                      },
                      child: Card(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        spacing: 20,
                        children: [
                          Image.asset(
                            womenTops[index].imagePath,
                            fit: BoxFit.fitHeight,
                            height: 135,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyCustomText(
                                  tName: womenTops[index].titleName,
                                  fSize: 25,
                                  fWeight: FontWeight.w500,
                                ),
                                MyCustomText(
                                  tName: womenTops[index].subtitleName,
                                  fSize: 18,
                                  fWeight: FontWeight.w400,
                                  color: Colors.grey[500],
                                ),
                                Row(
                                  children: [
                                    RatingBar.builder(
                                        initialRating: rating,
                                        itemCount: 5,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemSize: 25,
                                        itemPadding: EdgeInsets.symmetric(
                                            horizontal: 2.0),
                                        itemBuilder: (context, _) {
                                          return Icon(
                                            Icons.star_border_rounded,
                                            color: Colors.amber,
                                          );
                                        },
                                        onRatingUpdate: (rating) {
                                          setState(() {
                                            rating = rating;
                                          });
                                        }),
                                    MyCustomText(tName: " ($rating)"),
                                  ],
                                ),
                                MyCustomText(
                                  tName: womenTops[index].productPrice,
                                  fSize: 20,
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                    );
                  },
                );
        }),
      ),
    );
  }
}
