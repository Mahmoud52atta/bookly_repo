import 'package:bookly_app/Featuers/searsh/presentaition/views/widget/custom_textField.dart';
import 'package:flutter/material.dart';

class SearhViewBody extends StatelessWidget {
  const SearhViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomSearshTextField(),
      ],
    );
  }
}
