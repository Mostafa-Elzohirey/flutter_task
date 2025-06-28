import 'package:flutter/material.dart';
import 'package:flutter_task/core/constants/colors.dart';

import 'custom_info_card.dart';

class AccountSubsection extends StatelessWidget {
  const AccountSubsection({super.key});
  final String name = "Ahmed";
  final String email = "test@test.com";
  final String phone = "01000000000";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Account",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: salmon),
          ),

        ),
        Divider(height: 1.5, color: salmon),
        SizedBox(height: 15),
        Card(
          color: beige,
          elevation: 6,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: InfoCard(name: name, email: email, phone: phone),
          ),
        )
      ],
    );
  }
}

