import 'package:ananta_house/components/input/search_input.dart';
import 'package:flutter/material.dart';

class SearchSection extends StatefulWidget {
  const SearchSection({super.key});

  @override
  State<SearchSection> createState() => _SearchSectionState();
}

class _SearchSectionState extends State<SearchSection> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SearchInput(
      controller: controller,
      onChanged: (value) {},
      onClear: () => controller.clear(),
    );
  }
}
