import 'dart:async';
import 'package:ecommarces_app/views/pages/onboarding/onboarding_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  getSplashNavigate() {
    Timer(
      const Duration(seconds: 3),
      () => Get.offAll(
        () => const OnboardingPage(),
      ),
    );
  }

  @override
  void onInit() {
    getSplashNavigate();
    super.onInit();
  }
}
