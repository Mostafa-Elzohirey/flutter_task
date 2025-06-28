import 'package:flutter/material.dart';
import 'package:flutter_task/core/widgets/custom_sub_tab_bar.dart';

class FAQSBody extends StatefulWidget {
  const FAQSBody({super.key});

  @override
  State<FAQSBody> createState() => _FAQSBodyState();
}

class _FAQSBodyState extends State<FAQSBody> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomSubTabBar(),
      ],
    );
  }
}
