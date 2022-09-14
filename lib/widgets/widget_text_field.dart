import 'package:flutter/material.dart';

import '../consts.dart';

class WidgetTextField extends StatefulWidget {
  const WidgetTextField({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
    required this.isObsecure,
  }) : super(key: key);
  final String hintText;
  final String prefixIcon;
  final bool isObsecure;

  @override
  State<WidgetTextField> createState() => _WidgetTextFieldState();
}

class _WidgetTextFieldState extends State<WidgetTextField> {
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextField(
        onTap: () {
          setState(() {
            isTap = !isTap;
          });
        },
        obscureText: widget.isObsecure,
        style: manrope.copyWith(
          color: secondaryColor,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: widget.hintText,
          hintStyle: manrope.copyWith(
            color: primaryColor.withOpacity(0.5),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          prefixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                width: 16,
              ),
              ImageIcon(
                AssetImage(widget.prefixIcon),
                color: isTap ? secondaryColor : primaryColor.withOpacity(0.5),
                size: 18,
              ),
              const SizedBox(
                width: 16,
              ),
              VerticalDivider(
                color: isTap ? secondaryColor : primaryColor.withOpacity(0.5),
                thickness: 1,
              ),
              const SizedBox(
                width: 16,
              ),
            ],
          ),
          prefixIconConstraints: const BoxConstraints(
            minHeight: 14,
            minWidth: 14,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
