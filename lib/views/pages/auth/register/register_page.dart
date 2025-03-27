
import 'package:ecommarces_app/components/my_custom_button.dart';
import 'package:ecommarces_app/components/my_custom_icon.dart';
import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:ecommarces_app/utils/const/color_code.dart';
import 'package:ecommarces_app/views/pages/auth/login/login_page.dart';
import 'package:ecommarces_app/views/pages/auth/login/widget/my_email_field.dart';
import 'package:ecommarces_app/views/pages/auth/login/widget/my_password_field.dart';
import 'package:ecommarces_app/views/pages/auth/login/widget/social_custom_container.dart';
import 'package:ecommarces_app/views/pages/auth/register/widget/my_name_field.dart';
import 'package:ecommarces_app/views/pages/bottomNavBar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                spacing: 20,
                children: [
                  MyCustomIcon(
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  MyCustomText(
                    tName: "Register",
                    fWeight: FontWeight.bold,
                    fSize: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 90,
              ),
              Column(
                spacing: 30,
                children: [
                  Form(
                      key: formKey,
                      child: Column(
                        spacing: 30,
                        children: [
                          MyNameField(),
                          MyEmailField(
                            controller: emailController,
                          ),
                          MyPasswordField(controller: passwordController),
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          child: Row(
                            children: [
                              MyCustomText(
                                tName: "Already have an account?",
                                fSize: 18,
                              ),
                              MyCustomIcon(
                                icon: Icons.arrow_forward_sharp,
                                color: RColors.color,
                                size: 20,
                              )
                            ],
                          )),
                    ],
                  ),
                  MyCustomButton(
                    tName: "Register",
                    onPressed: () {
                      Get.to(BottomNavBar());
                      // if (formKey.currentState != null &&
                      //     formKey.currentState!.validate()) {
                      //   formKey.currentState!
                      //       .save(); // Save form data if needed
                      //   print("Form validated! Navigating to BottomNavBar...");
                      // } else {
                      //   print("Form validation failed!");
                      // }
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Column(
                spacing: 10,
                children: [
                  MyCustomText(
                    tName: "Or login with social account",
                    color: Colors.black,
                  ),
                  Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialCustomContainer(
                        onTap: () {},
                        image: AssetImage('assets/images/icon/google.png'),
                      ),
                      SocialCustomContainer(
                        onTap: () {},
                        image: AssetImage('assets/images/icon/facebook.png'),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
