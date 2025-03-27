import 'package:ecommarces_app/controller/getx/ui/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark
    ));
    Get.put(SplashController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/icon/shopping-bag.png",
              height: 170,
              width: 170,
              fit: BoxFit.fitHeight,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Ecommarce\nApp",
              textAlign: TextAlign.center,

              style: TextStyle(

                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.brown,
                letterSpacing: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
