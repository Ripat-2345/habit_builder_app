import 'package:flutter/material.dart';

import '../../consts.dart';
import '../../widgets/widget_app_bar.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  static final List _history = ['This Week', 'This Day', 'Last Week'];
  String _historyValue = _history.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 38,
          right: 20,
          bottom: 20,
        ),
        child: Column(
          children: [
            WidgetAppBar(
              prefix: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: primaryColor.withOpacity(0.2),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/icons/back_icon.png",
                      width: 16,
                      height: 12,
                    ),
                  ),
                ),
              ),
              title: Text(
                'Profile',
                style: manrope.copyWith(
                  color: primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              suffix: InkWell(
                onTap: () {},
                child: Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: primaryColor.withOpacity(0.2),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/icons/edit_icon.png",
                      width: 16,
                      height: 16,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 42,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          "assets/images/profile_img.png",
                          width: 60,
                          height: 60,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Marilyn Aminoff",
                            style: manrope.copyWith(
                              color: primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Name",
                            style: manrope.copyWith(
                              color: primaryColor.withOpacity(0.5),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: 110,
                        height: 33,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Center(
                          child: DropdownButton(
                            underline: DropdownButtonHideUnderline(
                              child: Container(),
                            ),
                            value: _historyValue,
                            icon: Icon(
                              Icons.arrow_drop_down_rounded,
                              size: 28,
                              color: primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(12),
                            items: _history.map((value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(
                                  value,
                                  style: manrope.copyWith(
                                    color: primaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                _historyValue = value.toString();
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: thirdColor,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Total Work Hours",
                                  style: manrope.copyWith(
                                    color: primaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "18",
                                  style: nunito.copyWith(
                                    color: primaryColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: thirdColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        color: thirdColor,
                        thickness: 2.0,
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Task Completed",
                                  style: manrope.copyWith(
                                    color: primaryColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "12",
                                  style: nunito.copyWith(
                                    color: primaryColor,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color(0xff29319F).withOpacity(0.3),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Column(
              children: [
                Container(
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
                          "assets/icons/billing_icon.png",
                          width: 18,
                          height: 18,
                        ),
                      ),
                    ),
                    title: Text(
                      "Billing Methods",
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
                ),
                Container(
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
                          "assets/icons/achive_icon.png",
                          width: 18,
                          height: 18,
                        ),
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Longest Streak",
                          style: manrope.copyWith(
                            color: primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "20 Days",
                          style: manrope.copyWith(
                            color: primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
