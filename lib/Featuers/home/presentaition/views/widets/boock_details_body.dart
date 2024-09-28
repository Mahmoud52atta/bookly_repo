import 'package:bookly_app/Featuers/home/presentaition/views/widets/boock_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BoockDetailsBody extends StatelessWidget {
  const BoockDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BoockItem(),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18,
        )
      ],
    );
  }
}
