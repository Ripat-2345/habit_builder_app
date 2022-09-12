import 'package:flutter/material.dart';
import 'package:habit_builder_app/consts.dart';

import '../../widgets/widget_app_bar.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({Key? key}) : super(key: key);

  final List _generalMenu = [
    [
      "assets/icons/notification_icon.png",
      "Notifications",
      "Customize notifications"
    ],
    [
      "assets/icons/more_icon.png",
      "More customization",
      "Customize it more to fit your usage"
    ],
  ];

  final List _supportMenu = [
    [
      "assets/icons/phone_icon.png",
      "Contact",
    ],
    [
      "assets/icons/chat_icon.png",
      "Feedback",
    ],
    [
      "assets/icons/shield_icon.png",
      "Privacy Policy",
    ],
    [
      "assets/icons/warning_icon.png",
      "About",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 38,
            right: 20,
            bottom: 28,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WidgetAppBar(
                prefix: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: primaryColor.withOpacity(0.2),
                    ),
                    child: Image.asset(
                      "assets/icons/menu_icon.png",
                    ),
                  ),
                ),
                title: Text(
                  "Settings",
                  style: manrope.copyWith(
                    color: primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                suffix: const SizedBox(
                  width: 30,
                ),
              ),
              const SizedBox(
                height: 42,
              ),
              Container(
                width: 374,
                height: 146,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  image: const DecorationImage(
                    image: AssetImage("assets/images/card_illustration.png"),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Check Your Profile",
                        style: nunito.copyWith(
                          color: primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "usernew@mail.com",
                        style: manrope.copyWith(
                          color: primaryColor.withOpacity(0.3),
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      SizedBox(
                        width: 120,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: secondaryColor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            "View",
                            style: manrope.copyWith(
                              color: primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Text(
                "General",
                style: manrope.copyWith(
                  color: primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: _generalMenu.map((data) {
                  return Container(
                    width: double.infinity,
                    height: 74,
                    margin: const EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      leading: Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: thirdColor,
                        ),
                        child: Center(
                          child: Image.asset(
                            data[0],
                            width: 18,
                            height: 18,
                          ),
                        ),
                      ),
                      title: Text(
                        data[1],
                        style: manrope.copyWith(
                          color: primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      subtitle: Text(
                        data[2],
                        style: manrope.copyWith(
                          color: primaryColor.withOpacity(0.5),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: primaryColor.withOpacity(0.1),
                              blurRadius: 5,
                              offset: const Offset(1, 2),
                              spreadRadius: 1,
                            )
                          ],
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: primaryColor,
                          size: 18,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Support",
                style: manrope.copyWith(
                  color: primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: _supportMenu.map((data) {
                  return Container(
                    width: double.infinity,
                    height: 55,
                    margin: const EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      leading: Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: thirdColor,
                        ),
                        child: Center(
                          child: Image.asset(
                            data[0],
                            width: 18,
                            height: 18,
                          ),
                        ),
                      ),
                      title: Text(
                        data[1],
                        style: manrope.copyWith(
                          color: primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: primaryColor.withOpacity(0.1),
                              blurRadius: 5,
                              offset: const Offset(1, 2),
                              spreadRadius: 1,
                            )
                          ],
                        ),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: primaryColor,
                          size: 18,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
