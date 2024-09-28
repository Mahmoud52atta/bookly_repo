import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BoockItem extends StatelessWidget {
  const BoockItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 106),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .4,
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
      ),
    );
  }
}
