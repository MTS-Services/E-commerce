
import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:ecommarces_app/controller/getx/ui/onboarding.dart';
import 'package:ecommarces_app/views/pages/auth/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widget/onbaording2.dart';
import 'widget/onboarding1.dart';
import 'widget/onboarding3.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.onLastPage.value = (index == 2);
            },
            children: const [
              Onboarding1(),
              Onboarding2(),
              Onboarding3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyCustomText(
                  tName: "Skip",
                  onTap: () {
                    controller.pageController.jumpToPage(2);
                  },
                ),
                SmoothPageIndicator(
                  controller: controller.pageController,
                  count: 3,
                ),
                Obx(
                  () => controller.onLastPage.value
                      ? MyCustomText(
                          tName: "Done",
                          fWeight: FontWeight.w700,
                          color: Colors.blue,
                          onTap: () {
                            Get.to(
                              () => const LoginPage(),
                            );
                          },
                        )
                      : MyCustomText(
                          tName: "Next",
                          onTap: () {
                            controller.pageController.nextPage(
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeIn);
                          },
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
