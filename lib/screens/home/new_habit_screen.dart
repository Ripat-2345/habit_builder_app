import 'package:flutter/material.dart';

import '../../consts.dart';
import '../../widgets/widget_app_bar.dart';

class NewHabitScreen extends StatelessWidget {
  const NewHabitScreen({Key? key}) : super(key: key);

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
              bottom: 10,
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
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: primaryColor,
                        size: 22,
                      ),
                    ),
                  ),
                  title: Text(
                    "New Habit",
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
