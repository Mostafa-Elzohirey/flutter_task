import 'package:flutter/material.dart';
import 'package:flutter_task/core/constants/colors.dart';
import 'package:flutter_task/core/widgets/custom_list_item.dart';

import 'custom_search_bar.dart';
import 'text_widget.dart';

class GeneralSubsection extends StatelessWidget {
  const GeneralSubsection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 573,
      child: ListView(
        children: [
          SizedBox(height: 50, child: CustomSearchBar()),
          SizedBox(height: 20),
          Divider(height: 1.5, color: salmon),
          Row(
            children: [
              Text(
                "Lorem ipsum dolor sit amet?",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.keyboard_arrow_down_outlined, size: 35),
              ),
            ],
          ),
          Divider(height: 1.5, color: salmon),
          SizedBox(height: 15),
          TextWidget(
            text:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ac feugiat metus. Nam augue leo, sodales at nisi et, maximus malesuada magna.",
          ),
          SizedBox(height: 5),
          ...List.generate(15, (index) => CustomListItem()),
        ],
      ),
    );
  }
}

