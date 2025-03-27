import 'package:ecommarces_app/views/pages/collection/widget/my_collection_container.dart';
import 'package:flutter/material.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({super.key});

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyCollectionContainer(
              height: screenHeight * 0.48,
              width: double.infinity,
              image: AssetImage("assets/images/collection/female.png"),
              collectionName: 'New collection',
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    MyCollectionContainer(
                      image: AssetImage('assets/images/collection/s.png'),
                      collectionName: "",
                      height: screenHeight * 0.23,
                      width: screenWidth * 0.5,
                    ),
                    MyCollectionContainer(
                      images: DecorationImage(
                          image: AssetImage(
                            "assets/images/collection/black.png",
                          ),
                          fit: BoxFit.fitWidth),
                      collectionName: "Black",
                      height: screenHeight * 0.29,
                      width: screenWidth * 0.5,
                    )
                  ],
                ),
                MyCollectionContainer(
                  image: AssetImage("assets/images/collection/men hodies.png"),
                  collectionName: "Men’s \nhoodies",
                  height: screenHeight * 0.52,
                  width: screenWidth * 0.5,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
