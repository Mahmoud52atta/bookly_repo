import 'package:bookly_app/Featuers/home/presentaition/views/home_view.dart';
import 'package:bookly_app/Featuers/splash/presentaition/views/widgets/sliding_text.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> animation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigatorToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(child: Image.asset(AssetsData.logo)),
        SlidingText(animation: animation)
      ],
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation = Tween<Offset>(begin: Offset(0, 10), end: Offset(0, 0))
        .animate(animationController);
    animationController.forward();
  }

  void navigatorToHome() {
    Future.delayed(
      Duration(seconds: 2),
      () {
        // Get.to(() => HomeView(),
        //     transition: Transition.fadeIn, duration: kTransitionDuraition);

        GoRouter.of(context).push(AppRouter.khomeView);
      },
    );
  }
}
