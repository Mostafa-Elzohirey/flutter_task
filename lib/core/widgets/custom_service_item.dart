import 'package:flutter/material.dart';
import 'package:flutter_task/core/constants/colors.dart';

class CustomServiceItem extends StatelessWidget {
  const CustomServiceItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });
  final String title;
  final String subtitle;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(subtitle, style: TextStyle(fontSize: 14)),
            ],
          ),
          Spacer(),
          CircleAvatar(
            radius: 12,
            backgroundColor: salmon,
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: white,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
