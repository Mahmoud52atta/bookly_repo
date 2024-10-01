import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, top: 80, bottom: 46.9),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 20,
          ),
          Spacer(),
          IconButton(
              // iconSize: 15,
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kSearshView);
              },
              icon: Image.asset(
                'assets/images/ic search.png',
                height: 32,
              )),
        ],
      ),
    );
  }
}
