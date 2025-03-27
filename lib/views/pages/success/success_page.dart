
import 'package:ecommarces_app/components/my_custom_button.dart';
import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:ecommarces_app/views/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 200, bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset('assets/images/image/bags.png'),
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
              MyCustomButton(
                tName: "Continue Shopping",
                onPressed: () {
                  Get.to(HomePage());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
