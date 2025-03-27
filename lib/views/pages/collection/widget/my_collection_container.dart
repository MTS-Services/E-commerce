import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';

class MyCollectionContainer extends StatelessWidget {
  const MyCollectionContainer({
    super.key,
    this.image,
    required this.collectionName,
    required this.height,
    required this.width,
    this.fit,
    this.images,
  });
  final ImageProvider<Object>? image;
  final String collectionName;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final DecorationImage? images;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: images ??
            DecorationImage(image: image!, fit: fit ?? BoxFit.fitHeight),
      ),
      child: Center(
        child: MyCustomText(
          tName: collectionName,
          fSize: 35,
          fWeight: FontWeight.bold,
          color: Colors.grey[100],
        ),
      ),
    );
  }
}
