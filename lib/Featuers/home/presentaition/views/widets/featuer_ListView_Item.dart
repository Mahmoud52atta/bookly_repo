import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeatuerListViewItem extends StatelessWidget {
  const FeatuerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .32,
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              // color: Colors.red,
              image: const DecorationImage(
                  image: AssetImage(AssetsData.testImage))),
        ),
      ),
    );
  }
}
