import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeatuerBooksItem extends StatelessWidget {
  const FeatuerBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            // color: Colors.red,
            image:
                const DecorationImage(image: AssetImage(AssetsData.testImage))),
      ),
    );
  }
}
