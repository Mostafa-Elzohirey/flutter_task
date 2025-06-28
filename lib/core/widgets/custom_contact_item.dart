import 'package:flutter/material.dart';
import 'package:flutter_task/core/constants/colors.dart';

class CustomContactItem extends StatelessWidget {
  const CustomContactItem({
    super.key,
    required this.label,
    required this.icon,
    required this.contactOption,
    required this.onTap,
  });
  final String label;
  final Icon icon;
  final Widget contactOption;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      iconColor: salmon,
      collapsedShape: LinearBorder.none,
      shape: LinearBorder.none,
      title: Text(label),
      leading: CircleAvatar(backgroundColor: salmon, child: icon),
      children: [
        ListTile(
          title: GestureDetector(onTap: onTap, child: contactOption),
        ),
      ],
    );
  }
}
