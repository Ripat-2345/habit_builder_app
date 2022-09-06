import 'package:flutter/material.dart';
import 'package:habit_builder_app/widgets/widget_app_bar.dart';

import '../../consts.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              "assets/images/background.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 38),
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
                      child: Image.asset(
                        "assets/icons/menu_icon.png",
                      ),
                    ),
                  ),
                  title: Text(
                    'Courses',
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
                      child: Icon(
                        Icons.search_rounded,
                        color: primaryColor,
                        size: 28,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  width: 374,
                  height: 146,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    image: const DecorationImage(
                      image: AssetImage(
                          "assets/images/card_course_illustration.png"),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "HABIT\nCOURSES",
                          style: nunito.copyWith(
                            color: primaryColor,
                            fontSize: 26,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Find what fascinates you as you explore\nthese habit courses.",
                          style: manrope.copyWith(
                            color: primaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text("Sort By:"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
