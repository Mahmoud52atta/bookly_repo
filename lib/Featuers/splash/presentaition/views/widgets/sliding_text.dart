import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.animation,
  });

  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animation,
        builder: (context, widget) {
          return SlideTransition(
            position: animation,
            child: const Text(
              'Read free books',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
