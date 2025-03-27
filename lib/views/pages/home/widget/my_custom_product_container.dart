import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyCustomProductContainer extends StatefulWidget {
  final String? image;
  final String people;
  final String pName;
  final String pPrice;
  const MyCustomProductContainer({
    super.key,
    this.image,
    required this.people,
    required this.pName,
    required this.pPrice,
  });

  @override
  State<MyCustomProductContainer> createState() =>
      _MyCustomProductContainerState();
}

class _MyCustomProductContainerState extends State<MyCustomProductContainer> {
  @override
  Widget build(BuildContext context) {
    double rating = 0.0;
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.45,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          SizedBox(
              child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(clipBehavior: Clip.none, children: [
              Image.asset(
                "${widget.image}",
                fit: BoxFit.fitHeight,
                height: screenHeight * 0.25,
                width: screenWidth * 0.45,
              ),
              Container(
                height: 35,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: MyCustomText(
                    tName: "New",
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                left: 120,
                child: Container(
                  height: 35,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ]),
          )),
          Column(
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
                      itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
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
                tName: widget.people,
                color: Colors.grey[300],
                fSize: 16,
              ),
              MyCustomText(
                tName: widget.pName,
                color: Colors.black,
                fSize: 20,
              ),
              MyCustomText(
                tName: widget.pPrice,
                color: Colors.black,
                fSize: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
