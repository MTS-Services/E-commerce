
import 'package:ecommarces_app/components/my_custom_button.dart';
import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:ecommarces_app/views/pages/success/success_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContinueShopping extends StatelessWidget {
  const ContinueShopping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage("assets/images/image/happy man.png")),
        ),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                MyCustomText(
                  tName: "Success",
                  fWeight: FontWeight.bold,
                  fSize: 40,
                ),
                MyCustomText(
                  tName:
                      "Your order will be delivered soon.\nThank you for choosing our app!",
                  fSize: 18,
                  fWeight: FontWeight.w600,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: MyCustomButton(
                tName: "Continue Shopping",
                onPressed: () {
                  Get.to(SuccessPage());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
