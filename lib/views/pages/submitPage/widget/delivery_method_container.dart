import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';

class DeliveryMethodContainer extends StatelessWidget {
  final String image;
  final String? tName;
  const DeliveryMethodContainer({
    super.key,
    required this.image,
    this.tName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(2, 5),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(spacing: 5, children: [
          Image.asset(image),
          MyCustomText(
            tName: tName!,
            fSize: 15,
            color: Colors.grey[400],
          ),
        ]),
      ),
    );
  }
}
