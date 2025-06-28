import 'package:flutter/material.dart';
import 'package:flutter_task/core/constants/colors.dart';

class CustomChatIcon extends StatelessWidget {
  const CustomChatIcon({
    super.key,
    required this.controller,
    required this.icon,
    required this.onPressed,
  });

  final TextEditingController controller;
  final Icon icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: white,
      child: IconButton(icon: icon, onPressed: onPressed),
    );
  }
}
