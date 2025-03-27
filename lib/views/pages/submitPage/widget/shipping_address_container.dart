import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';

class ShippingAddressContainer extends StatelessWidget {
  const ShippingAddressContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                offset: Offset(3, 1),
                blurRadius: 1)
          ]),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          spacing: 5,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyCustomText(
                  tName: "Jane Doe",
                  fSize: 20,
                  fWeight: FontWeight.w600,
                ),
                TextButton(
                  onPressed: () {
                    // Handle change address
                  },
                  child: MyCustomText(
                      tName: "change",
                      fSize: 18,
                      fWeight: FontWeight.w700,
                      color: Colors.deepOrange),
                ),
              ],
            ),
            MyCustomText(
              tName: "3 Newbridge Court",
              fSize: 16,
              fWeight: FontWeight.w500,
            ),
            MyCustomText(
              tName: "Chino Hills, CA 91709, United States",
              fSize: 16,
              fWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
