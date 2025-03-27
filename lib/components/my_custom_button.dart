import 'package:ecommarces_app/utils/const/color_code.dart';
import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  final String tName;
  final void Function()? onPressed;
  final double? width;
  final double? fontSize;
  const MyCustomButton({
    super.key,
    required this.tName,
    this.onPressed,
    this.width,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.05,
      width: width ?? double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              disabledBackgroundColor: RColors.color,
              backgroundColor: RColors.color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Text(
            tName,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: fontSize ?? 22,
            ),
          )),
    );
  }
}
