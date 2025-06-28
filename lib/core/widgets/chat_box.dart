import 'package:flutter/material.dart';
import 'package:flutter_task/core/constants/colors.dart';
import 'package:flutter_task/core/functions/send_message.dart';
import 'package:flutter_task/core/widgets/custom_text_field.dart';

class ChatBox extends StatelessWidget {
  ChatBox({super.key});

  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: beige,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            CustomChatIcon(
              controller: controller,
              icon: const Icon(Icons.camera_alt_outlined, color: salmon),
            ),
            SizedBox(width: 5),
            Expanded(
              child: SizedBox(
                height: 40,
                child: Center(child: CustomTextField(controller: controller)),
              ),
            ),
            SizedBox(width: 5),
            CircleAvatar(
              radius: 20,
              backgroundColor: white,
              child: IconButton(
                icon: const Icon(Icons.mic, color: salmon),
                onPressed: () {},
              ),
            ),
            SizedBox(width: 5),
            CircleAvatar(
              backgroundColor: white,
              child: IconButton(
                icon: const Icon(Icons.send_outlined, color: salmon),
                onPressed: () {
                  final text = controller.text.trim();
                  if (text.isNotEmpty) {
                    sendMessage(text, 'user');
                    controller.clear();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomChatIcon extends StatelessWidget {
  const CustomChatIcon({
    super.key,
    required this.controller,
    required this.icon,
  });

  final TextEditingController controller;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: white,
      child: IconButton(
        icon: icon,
        onPressed: () {
      final text = controller.text.trim();
      if (text.isNotEmpty) {
        sendMessage(text, 'user');
        controller.clear();}
        },
      ),
    );
  }
}
