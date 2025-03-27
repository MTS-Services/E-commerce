import 'package:flutter/material.dart';

class SocialCustomContainer extends StatelessWidget {
  final ImageProvider<Object> image;
  final void Function()? onTap;
  const SocialCustomContainer({
    super.key,
    required this.image,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWeight = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: screenHeight * 0.06,
        width: screenWeight * 0.14,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: image,
          ),
        ),
      ),
    );
  }
}
