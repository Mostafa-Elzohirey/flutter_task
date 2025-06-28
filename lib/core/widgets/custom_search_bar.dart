import 'package:flutter/material.dart';
import 'package:flutter_task/core/constants/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: terracotta,
      decoration: InputDecoration(
        filled: true,
        fillColor: beige,
        hintText: "search",
        hintStyle: const TextStyle(color: brownRosy),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 5.0),
          child: CircleAvatar(
            backgroundColor: salmon,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.tune, color: terracotta, size: 20),
            ),
          ),
        ),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
