import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRaiting extends StatelessWidget {
  const BookRaiting({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          size: 18,
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '48.6',
          style: Styles.textStyle16.copyWith(fontSize: 18),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(243.5)',
          style: Styles.textStyle14.copyWith(color: Colors.grey),
        )
      ],
    );
  }
}
