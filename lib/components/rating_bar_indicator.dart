import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarIndicators extends StatefulWidget {
  const RatingBarIndicators({super.key});

  @override
  State<RatingBarIndicators> createState() => _RatingBarIndicatorsState();
}

class _RatingBarIndicatorsState extends State<RatingBarIndicators> {
  double rating = 3.5;
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
        initialRating: rating,
        itemCount: 5,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemSize: 26,
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
        });
  }
}
