import 'package:flutter/material.dart';
import 'package:flutter_task/core/constants/colors.dart';

class CustomTabs extends StatelessWidget {
  const CustomTabs({super.key, required this.index, required this.onTap});
  final int index;
  final ValueChanged<int> onTap;

  static const _dur = Duration(milliseconds: 300);
  static const _curve = Curves.easeInOut;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Row(
        children: [
          tab(label: 'FAQ', idx: 0),
          const SizedBox(width: 20),
          tab(label: 'Contact Us', idx: 1),
        ],
      ),
    );
  }

  Widget tab({required String label, required int idx}) {
    final selected = idx == index;
    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(idx),
        child: AnimatedContainer(
          duration: _dur,
          curve: _curve,
          height: 25,
          decoration: BoxDecoration(
            color: selected ? salmon : beige, // FADING background
            borderRadius: BorderRadius.circular(220),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 4,
                offset: Offset(2, 5), // horizontal, vertical
              ),
            ],
          ),
          child: Center(
            child: AnimatedDefaultTextStyle(
              duration: _dur,
              curve: _curve,
              style: TextStyle(
                fontSize: 16,
                color: selected ? terracotta : brownRosy, // FADING text
              ),
              child: Text(label),
            ),
          ),
        ),
      ),
    );
  }
}