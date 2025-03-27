
import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:ecommarces_app/components/rating_bar_indicator.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage:
                      AssetImage("assets/images/rating/profile.png"),
                ),
                SizedBox(
                  width: 10,
                ),
                MyCustomText(
                  tName: "Abdullah",
                  fSize: 18,
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            RatingBarIndicators(),
            SizedBox(
              width: 10,
            ),
            MyCustomText(
              tName: "01 Nov,2024 ",
              fSize: 16,
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ReadMoreText(
          "The user interface of the app is quite intuitive.I improve myself.I was to navigate and makes purchase seamlessly.Great job!",
          style: TextStyle(fontSize: 17),
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18, color: Colors.blue),
          lessStyle: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 18, color: Colors.blue),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              spacing: 10,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyCustomText(
                      tName: "S Store",
                      fSize: 18,
                    ),
                    MyCustomText(
                      tName: "01 Feb,2025",
                      fSize: 18,
                    ),
                  ],
                ),
                ReadMoreText(
                  "The user interface of the app is quite intuitive.I improve myself.I was to navigate and makes purchase seamlessly.A Flutter plugin that allows for expanding and collapsing text with the added capability to style and interact with specific patterns in the text like hashtags, URLs, and mentions using the new Annotation feature.Great job!",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.blue),
                  lessStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.blue),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
