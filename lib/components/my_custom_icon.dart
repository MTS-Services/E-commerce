import 'package:flutter/material.dart';

class MyCustomIcon extends StatelessWidget {
  final void Function()? onTap;
  final IconData? icon;
  final double? size;
  final Color? color;
  const MyCustomIcon({
    super.key,
    this.icon,
    this.size,
    this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon ?? Icons.arrow_back_ios,
        size: size,
        color: color ?? Colors.black,
      ),
    );
  }
}
