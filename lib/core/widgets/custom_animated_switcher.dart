import 'package:flutter/material.dart';
import 'package:flutter_task/core/widgets/contact_us_body.dart';
import 'package:flutter_task/core/widgets/faqs_body.dart';

class CustomAnimatedSwitcher extends StatelessWidget {
  const CustomAnimatedSwitcher({super.key, required this.index});

  final int index;
  static const slideDur = Duration(milliseconds: 500);
  static const curve = Curves.easeInOut;
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: slideDur,
      transitionBuilder: (child, anim) {
        final offset = const Offset(-1, 0);
        return SlideTransition(
          position: Tween<Offset>(
            begin: offset,
            end: Offset.zero,
          ).animate(CurvedAnimation(parent: anim, curve: curve)),
          child: SizedBox.expand(child: child),
        );
      },
      child: index == 0
          ? const FAQSBody(key: ValueKey('faq'))
          : const ContactUsBody(key: ValueKey('contact')),
    );
  }
}
