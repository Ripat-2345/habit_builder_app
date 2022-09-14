import 'package:flutter/material.dart';
import 'package:habit_builder_app/consts.dart';
import 'package:habit_builder_app/widgets/widget_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 48,
            right: 20,
            bottom: 20,
          ),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  "assets/images/sign_up_illustration.png",
                  width: 187,
                  height: 200,
                ),
                const SizedBox(
                  height: 21,
                ),
                Text(
                  "CREATE YOUR ACCOUNT",
                  style: nunito.copyWith(
                    color: primaryColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const WidgetTextField(
                  hintText: "Username",
                  prefixIcon: "assets/icons/user_icon.png",
                  isObsecure: false,
                ),
                const SizedBox(
                  height: 8,
                ),
                const WidgetTextField(
                  hintText: "Email",
                  prefixIcon: "assets/icons/mail_icon.png",
                  isObsecure: false,
                ),
                const SizedBox(
                  height: 8,
                ),
                const WidgetTextField(
                  hintText: "Password",
                  prefixIcon: "assets/icons/lock_vector_icon.png",
                  isObsecure: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
