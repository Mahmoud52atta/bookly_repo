import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRaiting extends StatelessWidget {
  const BookRaiting(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.raiting,
      required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final int raiting;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          size: 14,
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          raiting.toString(),
          style: Styles.textStyle16
              .copyWith(decoration: TextDecoration.none, color: Colors.white),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '($count)',
          style: Styles.textStyle14
              .copyWith(color: Colors.grey, decoration: TextDecoration.none),
        )
      ],
    );
  }
}
