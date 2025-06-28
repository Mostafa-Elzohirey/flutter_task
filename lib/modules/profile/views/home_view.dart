import 'package:flutter/material.dart';
import 'package:flutter_task/core/constants/colors.dart';
import 'package:flutter_task/core/widgets/custom_service_item.dart';
import 'package:flutter_task/core/widgets/custom_app_bar.dart';
import 'package:flutter_task/core/widgets/text_widget.dart';
import 'package:flutter_task/routes/routes.dart' show Routes;
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Customer Services"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextWidget(text: "Hello! I'm here to assist you"),
            SizedBox(height: 15),
            TextWidget(
              text:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ac feugiat metus. Nam augue leo, sodales at nisi et, maximus malesuada magna.",
            ),
            SizedBox(height: 20),
            CustomServiceItem(
              title: "How can we help you?",
              subtitle: "Support",
              onTap: () {
                Get.toNamed(Routes.chatView);
              },
            ),
            SizedBox(height: 15),
            Divider(height: 1.5, color: salmon),
            SizedBox(height: 15),
            CustomServiceItem(
              title: "Help Center",
              subtitle: "General Information",
              onTap: () {
                Get.toNamed(Routes.helpView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
