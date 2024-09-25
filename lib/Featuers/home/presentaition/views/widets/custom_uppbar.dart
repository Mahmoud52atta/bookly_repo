import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 80),
      child: Row(
        children: [
          Image.asset(
            AssetsDats.logo,
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
