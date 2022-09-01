import 'package:flutter/material.dart';
import 'package:habit_builder_app/consts.dart';

class WidgetAppBar extends StatelessWidget {
  const WidgetAppBar({Key? key, this.prefix, this.title, this.suffix})
      : super(key: key);
  final Widget? prefix;
  final Widget? title;
  final Widget? suffix;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 44,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          prefix!,
          title!,
          suffix!,
        ],
      ),
    );
  }
}
