import 'package:flutter/material.dart';
import 'package:flutter_task/core/widgets/custom_animated_switcher.dart';
import 'package:flutter_task/core/widgets/custom_tab.dart';
import 'package:flutter_task/modules/profile/controllers/main_tab_controller.dart';
import 'package:get/get.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});
  @override
  State<CustomTabBar> createState() => CustomTabBarState();
}

class CustomTabBarState extends State<CustomTabBar> {
  int index = 0;
  int previous = 0;
  final MainTabController controller = Get.put(MainTabController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomTabs(
            index: controller.index.value,
            onTap: controller.changeIndex,
          ),
        ),
        const SizedBox(height: 20),
        Obx(
          () => Expanded(
            child: CustomAnimatedSwitcher(index: controller.index.value),
          ),
        ),
      ],
    );
  }
}
