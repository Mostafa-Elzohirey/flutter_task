import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchFilters extends StatelessWidget {
  const SearchFilters({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Filter by', style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            children: [
              FilterChip(
                label: const Text('Category'),
                selected: false,
                onSelected: (_) {
                  Get.back();
                },
              ),
              FilterChip(
                label: const Text('Alphabetical'),
                selected: false,
                onSelected: (_) {
                  Get.back();
                },
              ),
              FilterChip(
                label: const Text('Frequency'),
                selected: false,
                onSelected: (_) {
                  Get.back();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
