import 'package:flutter/material.dart';

class MyCustomText extends StatelessWidget {
  final String tName;
  final double? fSize;
  final FontWeight? fWeight;
  final Color? color;
  final double? letterSpacing;
  final int? maxLines;
  final TextAlign? tAlign;
  final void Function()? onTap;

  const MyCustomText({
    super.key,
    required this.tName,
    this.fSize,
    this.fWeight,
    this.color,
    this.letterSpacing,
    this.maxLines,
    this.tAlign, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Text(
        tName,
        maxLines: maxLines,
        textAlign: tAlign,
        style: TextStyle(
          fontSize: fSize,
          fontWeight: fWeight ?? FontWeight.bold,
          color: color ?? Colors.black,
          letterSpacing: letterSpacing,
        ),
      ),
    );
  }
}
