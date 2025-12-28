import 'package:ananta_house/components/button/long_button.dart';
import 'package:ananta_house/models/category_model.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categories.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: LongButton(
              text: categories[index].name,
              isActive: selectedIndex == index,
              onPressed: () {
                setState(() => selectedIndex = index);
              },
            ),
          );
        }),
      ),
    );
  }
}
