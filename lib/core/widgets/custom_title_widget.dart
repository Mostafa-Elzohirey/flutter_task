import 'package:flutter/material.dart';
import 'package:flutter_task/core/constants/colors.dart';

class CustomTitleWidget extends StatelessWidget {
  const CustomTitleWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.support_agent_outlined, size: 40, color: salmon),
        SizedBox(width: 5),
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: salmon,
          ),
        ),
      ],
    );
  }
}
