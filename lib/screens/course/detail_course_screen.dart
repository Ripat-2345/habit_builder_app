import 'package:flutter/material.dart';
import 'package:habit_builder_app/consts.dart';
import 'package:habit_builder_app/widgets/widget_app_bar.dart';

class DetailCourseScreen extends StatelessWidget {
  const DetailCourseScreen({Key? key, required this.habitTitle})
      : super(key: key);
  final String habitTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
      body: Padding(
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
              height: 38,
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: AssetImage(
                    "assets/images/habit1.png",
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
                    "37 Lessons (2h 41m)",
                    style: manrope.copyWith(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Divider(
                    color: thirdColor,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
