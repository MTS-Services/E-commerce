import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

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
                "assets/images/onboarding/onboarding2.png",
                fit: BoxFit.cover,
              )),      const SizedBox(height: 25),
          const MyCustomText(
            tName: "Fashion First",
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
                  "Select the perfect place for your trip with ease,plan your journey without any hassle.Know the exact cost of the tour in advance,and travel with confidence and peace of mind!",
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
