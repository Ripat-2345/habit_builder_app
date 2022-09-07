import 'package:flutter/material.dart';
import 'package:habit_builder_app/consts.dart';
import 'package:habit_builder_app/widgets/widget_app_bar.dart';

class DetailCourseScreen extends StatelessWidget {
  DetailCourseScreen(
      {Key? key,
      required this.habitTitle,
      required this.duration,
      required this.totalLesson})
      : super(key: key);
  final String habitTitle;
  final String duration;
  final String totalLesson;
  final _lessons = [
    [
      'assets/icons/play_icon.png',
      'Introduction',
      '2:16',
    ],
    [
      'assets/icons/play_icon.png',
      'Adopting Prompts to Covid-19 with social',
      '3:08',
    ],
    [
      'assets/icons/play_icon.png',
      'Choosing a Notebook',
      '6:06',
    ],
    [
      'assets/icons/play_icon.png',
      'Optional Supplies',
      '2:04',
    ],
    [
      'assets/icons/play_icon.png',
      'Day 1',
      '3:38',
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
                    child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: primaryColor,
                      size: 22,
                    ),
                  ),
                ),
                title: Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Text(
                      habitTitle,
                      style: manrope.copyWith(
                        color: primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                suffix: const SizedBox(),
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/images/habit1_video.png",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 25,
                  horizontal: 17,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      habitTitle,
                      style: manrope.copyWith(
                        color: primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Divider(
                      color: thirdColor,
                    ),
                    Text(
                      "$totalLesson ($duration)",
                      style: manrope.copyWith(
                        color: primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      itemCount: _lessons.length,
                      itemBuilder: (context, index) {
                        var number = index + 1;
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Container(
                                    width: 38,
                                    height: 38,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: thirdColor,
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        _lessons[index][0],
                                        width: 16,
                                        height: 16,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "$number. ${_lessons[index][1]}",
                                      style: manrope.copyWith(
                                        color: primaryColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              _lessons[index][2],
                              style: manrope.copyWith(
                                color: primaryColor.withOpacity(0.4),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) => Divider(
                        color: thirdColor,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
