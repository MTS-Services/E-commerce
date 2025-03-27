
import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:ecommarces_app/components/rating_bar_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widget/over_all_product_rating.dart';
import 'widget/user_review_card.dart';


class RatingsReviewPage extends StatefulWidget {
  const RatingsReviewPage({super.key});

  @override
  State<RatingsReviewPage> createState() => _RatingsReviewPageState();
}

class _RatingsReviewPageState extends State<RatingsReviewPage> {
  double rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Icons.arrow_back)),
        title: MyCustomText(
          tName: "Rating & Reviews",
          fWeight: FontWeight.w700,
          fSize: 25,
          letterSpacing: 2,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              MyCustomText(
                tName:
                    "Rating and Reviews are verified and are form people who use the same type of device the you use.",
                fSize: 18,
                letterSpacing: 1,
              ),
              SizedBox(
                height: 15,
              ),

              // Rating section
              OverAllProductRating(),

              // Rating icon package
              RatingBarIndicators(),

              MyCustomText(
                tName: "12,411",
                fSize: 17,
              ),

              /// User Reviews Card
              Column(
                spacing: 10,
                children: [
                  UserReviewCard(),
                  UserReviewCard(),
                  UserReviewCard(),
                  UserReviewCard(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
