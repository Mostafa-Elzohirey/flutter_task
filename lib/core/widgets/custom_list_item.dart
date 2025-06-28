import 'package:flutter/material.dart';
import 'package:flutter_task/core/constants/colors.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Lorem ipsum dolor sit amet?",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: salmon,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: salmon,
                radius: 12,
                child: Icon(Icons.keyboard_arrow_down, size: 25, color: white),
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Divider(height: 1.5, color: salmon),
        SizedBox(height: 5),
      ],
    );
  }
}
