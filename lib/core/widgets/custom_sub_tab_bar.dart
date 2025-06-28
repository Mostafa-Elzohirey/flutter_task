import 'package:flutter/material.dart';
import 'package:flutter_task/core/widgets/custom_sub_tabs.dart';
import 'package:get/get.dart';
import 'package:flutter_task/modules/profile/controllers/sub_tab_controller.dart';

import 'custom_sub_animated_switcher.dart';

class CustomSubTabBar extends StatefulWidget {
  const CustomSubTabBar({super.key});

  @override
  State<CustomSubTabBar> createState() => _CustomSubTabBarState();
}

class _CustomSubTabBarState extends State<CustomSubTabBar> {
  int index = 0;
  int previous = 0;

  @override
  Widget build(BuildContext context) {
    final SubTabController controller = Get.put(SubTabController());
    return Expanded(
      child: Column(
        children: [
          Obx(
            () => CustomSubTabs(
              index: controller.index.value,
              onTap: controller.changeIndex,
            ),
          ),
          const SizedBox(height: 20),
          Obx(() => CustomSubAnimatedSwitcher(index: controller.index.value)),
        ],
      ),
    );
  }
}
