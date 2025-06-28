import 'package:flutter/material.dart';
import 'package:flutter_task/core/constants/colors.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Column(
        children: [
          Center(child: Text(text, style: TextStyle(fontSize: 16))),
          SizedBox(height: 15),
          Divider(height: 1.5, color: salmon),
        ],
      ),
    );
  }
}
