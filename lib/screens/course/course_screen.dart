import 'package:flutter/material.dart';
import 'package:habit_builder_app/screens/course/detail_course_screen.dart';
import 'package:habit_builder_app/widgets/widget_app_bar.dart';

import '../../consts.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  static final List _populars = ['Popular', 'New', 'Old'];
  static final List _filters = ['Filters', 'Category', 'Views'];
  final List _habitImages = [
    [
      'assets/images/habit1.png',
      '30 Day Journal Challenge - Establish a Habit of Daily Journaling',
      '2h 41m',
      '37 Lessons'
    ],
    [
      'assets/images/habit2.png',
      'Self Help Series: How to Create and Maintain Good Habits',
      '4h 6m',
      '24 Lessons',
    ],
  ];
  String _popularValue = _populars.first;
  String _filterValue = _filters.first;
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
            padding: const EdgeInsets.only(
              left: 20,
              top: 38,
              right: 20,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Sort By:",
                          style: manrope.copyWith(
                            color: primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Container(
                          width: 163,
                          height: 33,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: DropdownButton(
                              value: _popularValue,
                              isExpanded: true,
                              icon: Icon(
                                Icons.arrow_drop_down_rounded,
                                size: 28,
                                color: primaryColor,
                              ),
                              borderRadius: BorderRadius.circular(12),
                              items: _populars.map((value) {
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
                                  _popularValue = value.toString();
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 125,
                      height: 33,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: DropdownButton(
                          value: _filterValue,
                          isExpanded: true,
                          icon: Icon(
                            Icons.arrow_drop_down_rounded,
                            size: 28,
                            color: secondaryColor,
                          ),
                          borderRadius: BorderRadius.circular(12),
                          items: _filters.map((value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(
                                value,
                                style: manrope.copyWith(
                                  color: secondaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _filterValue = value.toString();
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: _habitImages.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailCourseScreen(
                                habitTitle: _habitImages[index][1],
                                duration: _habitImages[index][2],
                                totalLesson: _habitImages[index][3],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: 374,
                          height: 274,
                          margin: const EdgeInsets.only(bottom: 12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 166,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(_habitImages[index][0]),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  children: [
                                    Text(
                                      _habitImages[index][1],
                                      style: manrope.copyWith(
                                        color: primaryColor,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              _habitImages[index][2],
                                              style: manrope.copyWith(
                                                color: primaryColor,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              _habitImages[index][3],
                                              style: manrope.copyWith(
                                                color: primaryColor
                                                    .withOpacity(0.5),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            width: 32,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              color:
                                                  primaryColor.withOpacity(0.3),
                                            ),
                                            child: Icon(
                                              Icons.bookmark_border_rounded,
                                              size: 18,
                                              color: primaryColor,
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
