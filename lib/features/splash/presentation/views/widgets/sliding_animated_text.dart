import 'package:flutter/material.dart';

class SlidingAnimatedText extends StatelessWidget {
  const SlidingAnimatedText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (BuildContext context, Widget? child) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Read books for free',
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
