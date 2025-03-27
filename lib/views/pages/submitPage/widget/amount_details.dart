import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';

class AmountDetails extends StatelessWidget {
  const AmountDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 6,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyCustomText(
              tName: "Order:",
              fSize: 18,
              fWeight: FontWeight.w600,
              color: Colors.grey[400],
            ),
            MyCustomText(
              tName: "112\$",
              fSize: 18,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyCustomText(
              tName: "Delivery:",
              fSize: 16,
              fWeight: FontWeight.w600,
              color: Colors.grey[400],
            ),
            MyCustomText(
              tName: "15\$",
              fSize: 18,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyCustomText(
              tName: "Summary:",
              fSize: 16,
              fWeight: FontWeight.w600,
              color: Colors.grey[400],
            ),
            MyCustomText(
              tName: "127\$",
              fSize: 18,
            ),
          ],
        )
      ],
    );
  }
}
