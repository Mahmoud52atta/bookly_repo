import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BoockItem extends StatelessWidget {
  const BoockItem({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * .15),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
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
