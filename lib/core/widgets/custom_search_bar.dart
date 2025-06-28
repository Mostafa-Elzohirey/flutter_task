import 'package:flutter/material.dart';
import 'package:flutter_task/core/constants/colors.dart';
import 'package:flutter_task/core/widgets/search_filters.dart';

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
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  builder: (context) {
                    return const SearchFilters(); // this will be your custom widget
                  },
                );
              },
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

class CustomSearchBarWithFilter extends StatefulWidget {
  const CustomSearchBarWithFilter({super.key});

  @override
  State<CustomSearchBarWithFilter> createState() => _CustomSearchBarWithFilterState();
}

class _CustomSearchBarWithFilterState extends State<CustomSearchBarWithFilter> {
  bool showFilters = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
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
                  onPressed: () {
                    setState(() {
                      showFilters = !showFilters;
                    });
                  },
                  icon: const Icon(Icons.tune, color: terracotta, size: 20),
                ),
              ),
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
        ),
        if (showFilters)
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Wrap(
              spacing: 10,
              children: [
                FilterChip(label: const Text('General'), selected: false, onSelected: (_) {}),
                FilterChip(label: const Text('Account'), selected: false, onSelected: (_) {}),
                FilterChip(label: const Text('Services'), selected: false, onSelected: (_) {}),
              ],
            ),
          ),
      ],
    );
  }
}
