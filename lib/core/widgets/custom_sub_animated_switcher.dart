import 'package:flutter/material.dart';
import 'package:flutter_task/core/widgets/get_screen.dart';

class CustomSubAnimatedSwitcher extends StatelessWidget {
  const CustomSubAnimatedSwitcher({super.key, required this.index});

  final int index;
  static const slideDur = Duration(milliseconds: 350);
  static const curve = Curves.easeInOut;
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: slideDur,
      switchInCurve: curve,
      switchOutCurve: curve,
      transitionBuilder: (child, animation) {
        final slideFrom = const Offset(-2, 0);
        return SlideTransition(
          position: Tween<Offset>(
            begin: slideFrom,
            end: Offset.zero,
          ).animate(CurvedAnimation(parent: animation, curve: curve)),
          child: child,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: GetScreen(index: index),
      ),
    );
  }
}
