import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';

class RatingProgressIndicator extends StatelessWidget {
  final double? value;
  final String text;
  const RatingProgressIndicator({
    super.key,
    this.value,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: MyCustomText(
            tName: text,
            fSize: 17,
          ),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: 80,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 11,
              backgroundColor: Colors.grey[300],
              borderRadius: BorderRadius.circular(7),
              valueColor: AlwaysStoppedAnimation(Colors.amber),
            ),
          ),
        ),
      ],
    );
  }
}
