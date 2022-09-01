import 'package:flutter/material.dart';
import 'package:habit_builder_app/consts.dart';
import 'package:habit_builder_app/widgets/widget_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: thirdColor,
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
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 38,
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
                    'Homepage',
                    style: manrope.copyWith(
                      color: primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  suffix: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/profile_img.png",
                      width: 44,
                      height: 44,
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
                      image: AssetImage("assets/images/card_illustration.png"),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 26,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "WE FIRST MAKE OUR HABITS,\nAND THEN OUR HABITS\nMAKE US.",
                          style: nunito.copyWith(
                            color: primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "- ANONYMOUS",
                          style: manrope.copyWith(
                            color: primaryColor.withOpacity(0.3),
                            fontSize: 12,
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
        ],
      ),
    );
  }
}
