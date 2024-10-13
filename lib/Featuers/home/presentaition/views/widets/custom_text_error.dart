import 'package:flutter/material.dart';

class CustomTextError extends StatelessWidget {
  const CustomTextError({
    super.key,
    required this.textError,
  });

  final String textError;
  Widget build(BuildContext context) {
    return Text(textError);
  }
}
