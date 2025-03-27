import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark));
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.transparent,
            child: Image.asset(
              "assets/images/onboarding/onboarding3.png",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const MyCustomText(
            tName: "Wardrobe Welcome",
            fSize: 32,
            fWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: const MyCustomText(
              maxLines: 4,
              tAlign: TextAlign.center,
              tName:
                  "Finally, get ready for the tour,pack your bags, and set out on your journey.Explore new places and create unforgettable memories, as you go to your desired destination!",
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
