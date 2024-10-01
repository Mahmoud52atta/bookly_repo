import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    this.borderRadius,
    required this.fontSize,
  });
  // ignore: deprecated_member_use
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final BorderRadius? borderRadius;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
      height: 53,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: backgroundColor,
              shape: ContinuousRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(16))),
          onPressed: () {},
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w900,
                color: textColor,
                fontSize: fontSize),
          )),
    ));
  }
}
