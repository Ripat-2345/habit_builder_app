import 'package:flutter/material.dart';
import 'package:habit_builder_app/consts.dart';
import 'package:habit_builder_app/widgets/widget_bottom_navigation.dart';
import 'package:habit_builder_app/widgets/widget_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isKeepSigned = false;
  bool _isEmail = false;
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
                  color: Colors.white,
                  hintText: "Username",
                  prefixIcon: "assets/icons/user_icon.png",
                  isObsecure: false,
                ),
                const SizedBox(
                  height: 8,
                ),
                const WidgetTextField(
                  color: Colors.white,
                  hintText: "Email",
                  prefixIcon: "assets/icons/mail_icon.png",
                  isObsecure: false,
                ),
                const SizedBox(
                  height: 8,
                ),
                const WidgetTextField(
                  color: Colors.white,
                  hintText: "Password",
                  prefixIcon: "assets/icons/lock_vector_icon.png",
                  isObsecure: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _isKeepSigned = !_isKeepSigned;
                          });
                        },
                        child: Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: (_isKeepSigned)
                                  ? Colors.transparent
                                  : primaryColor,
                              width: 2,
                            ),
                            color: (_isKeepSigned) ? secondaryColor : null,
                          ),
                          child: Center(
                            child: (_isKeepSigned)
                                ? Icon(
                                    Icons.check_rounded,
                                    size: 14,
                                    color: primaryColor,
                                  )
                                : const SizedBox(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      Text(
                        "Keep me signed in",
                        style: manrope.copyWith(
                          color: primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _isEmail = !_isEmail;
                          });
                        },
                        child: Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: (_isEmail)
                                  ? Colors.transparent
                                  : primaryColor,
                              width: 2,
                            ),
                            color: (_isEmail) ? secondaryColor : null,
                          ),
                          child: Center(
                            child: (_isEmail)
                                ? Icon(
                                    Icons.check_rounded,
                                    size: 14,
                                    color: primaryColor,
                                  )
                                : const SizedBox(),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      Text(
                        "Email me about special pricing and more",
                        style: manrope.copyWith(
                          color: primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WidgetBottomNavigation(),
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
                      "Create Account",
                      style: manrope.copyWith(
                        color: primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 4,
                      height: 1,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Or sign in with",
                      style: manrope.copyWith(
                        color: primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 4,
                      height: 1,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 181,
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
                              "Google",
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
                    SizedBox(
                      width: 181,
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
                              "Facebook",
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
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: manrope.copyWith(
                        color: primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Sign In",
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
        ),
      ),
    );
  }
}
