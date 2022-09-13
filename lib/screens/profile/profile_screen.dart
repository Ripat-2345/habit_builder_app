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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
