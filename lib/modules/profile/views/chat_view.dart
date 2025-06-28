import 'package:flutter/material.dart';
import 'package:flutter_task/core/widgets/chat.dart';
import 'package:flutter_task/core/widgets/chat_box.dart';
import 'package:flutter_task/core/widgets/custom_app_bar.dart';
import 'package:flutter_task/core/widgets/custom_title_widget.dart';
import 'package:flutter_task/core/widgets/text_widget.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titleWidget: CustomTitleWidget(title: "Assistant")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: TextWidget(text: "I'm here to assist you"),
          ),
          const SizedBox(height: 20),
          Expanded(child: Chat2()),
          ChatBox(),
        ],
      ),
    );
  }
}
