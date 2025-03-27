import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

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
                "assets/images/onboarding/onboarding1.png",
                fit: BoxFit.cover,
              )),
          const SizedBox(height: 25),
          const MyCustomText(
            tName: "Style Start",
            fSize: 32,
            fWeight: FontWeight.bold,
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: const MyCustomText(
              maxLines: 4,
              tAlign: TextAlign.center,
              tName:
                  "Discover the best places for your trip,explore the world, and create unforgettable memories.Feel the adventure, embrace new experiences,and make every journey truly special.",
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
