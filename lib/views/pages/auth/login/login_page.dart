
import 'package:ecommarces_app/components/my_custom_button.dart';
import 'package:ecommarces_app/components/my_custom_icon.dart';
import 'package:ecommarces_app/components/my_custom_text.dart';
import 'package:ecommarces_app/views/pages/auth/login/widget/social_custom_container.dart';
import 'package:ecommarces_app/views/pages/auth/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/const/color_code.dart';
import 'widget/my_email_field.dart';
import 'widget/my_password_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                    tName: "Login",
                    fWeight: FontWeight.bold,
                    fSize: 30,
                  ),
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Column(
                spacing: 30,
                children: [
                  Form(
                      key: formKey,
                      child: Column(
                        spacing: 30,
                        children: [
                          MyEmailField(
                            controller: emailController,
                          ),
                          MyPasswordField(controller: passwordController),
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MyCustomText(tName: "Forgot your password?"),
                      MyCustomIcon(
                        icon: Icons.arrow_forward_sharp,
                        color: RColors.color,
                        size: 20,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  MyCustomButton(
                    tName: "Login",
                    onPressed: () {
                      Get.to(RegisterPage());
                      // if (formKey.currentState!.validate()) {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => RegisterPage()));
                      // }
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyCustomText(
                    tName: "No Account?",
                    fSize: 18,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(RegisterPage());
                    },
                    child: MyCustomText(
                      tName: "Sign Up",
                      fSize: 20,
                      fWeight: FontWeight.w600,
                      color: RColors.color,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 60,
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
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
