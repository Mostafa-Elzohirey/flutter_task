import 'package:flutter/material.dart';
import 'package:flutter_task/core/widgets/custom_app_bar.dart';
import 'package:flutter_task/core/widgets/custom_tab_bar.dart';
import 'package:flutter_task/core/widgets/text_widget.dart';

class HelpView extends StatelessWidget {
  const HelpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Help Center"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: TextWidget(text: "How can we help you?"),
              ),
              SizedBox(height: 15),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.9, // or any other ratio
                  child: CustomTabBar()),

            ],
          ),
        ),
      ),
    );
  }
}
