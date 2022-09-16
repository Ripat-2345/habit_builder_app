import 'package:flutter/material.dart';
import 'package:habit_builder_app/consts.dart';
import 'package:habit_builder_app/screens/auth/sign_up_screen.dart';
import 'package:habit_builder_app/screens/home/home_screen.dart';
import 'package:habit_builder_app/widgets/widget_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/introduction_background.png",
            fit: BoxFit.cover,
            width: double.infinity,
            height: 450,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.5,
              decoration: BoxDecoration(
                color: thirdColor,
                gradient: LinearGradient(
                  begin: FractionalOffset.bottomCenter,
                  end: FractionalOffset.topCenter,
                  colors: [
                    thirdColor,
                    thirdColor.withOpacity(0.01),
                  ],
                  stops: const [
                    0.8,
                    1.0,
                  ],
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 30,
                        top: 50,
                        right: 30,
                      ),
                      child: Column(
                        children: [
                          Text(
                            "WELCOME TO\nMONUMENTAL HABITS",
                            style: nunito.copyWith(
                              color: primaryColor,
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 41,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/icons/google_icon.png",
                                    width: 24,
                                    height: 24,
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Text(
                                    "Continue with Google",
                                    style: manrope.copyWith(
                                      color: primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/icons/facebook_icon.png",
                                    width: 24,
                                    height: 24,
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Text(
                                    "Continue with Facebook",
                                    style: manrope.copyWith(
                                      color: primaryColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 12,
                        right: 20,
                        bottom: 20,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Log in with email",
                            style: manrope.copyWith(
                              color: primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Divider(
                            color: thirdColor,
                            thickness: 1.5,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          WidgetTextField(
                            color: thirdColor,
                            hintText: "Email",
                            prefixIcon: "assets/icons/mail_icon.png",
                            isObsecure: false,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          WidgetTextField(
                            color: thirdColor,
                            hintText: "Password",
                            prefixIcon: "assets/icons/lock_vector_icon.png",
                            isObsecure: true,
                          ),
                          const SizedBox(
                            height: 21,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: secondaryColor,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                "Login",
                                style: manrope.copyWith(
                                  color: primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Forgot Password?",
                              style: manrope.copyWith(
                                color: primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account? ",
                                style: manrope.copyWith(
                                  color: primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SignUpScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Sign Up",
                                  style: manrope.copyWith(
                                    color: primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
