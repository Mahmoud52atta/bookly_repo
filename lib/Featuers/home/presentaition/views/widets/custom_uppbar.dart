import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 80, bottom: 65),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 20,
          ),
          Spacer(),
          IconButton(
              // iconSize: 15,
              onPressed: () {},
              icon: Image.asset(
                'assets/images/ic search.png',
                height: 32,
              )),
        ],
      ),
    );
  }
}
