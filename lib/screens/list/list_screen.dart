import 'package:ananta_house/screens/list/category_section.dart';
import 'package:ananta_house/screens/list/header_section.dart';
import 'package:ananta_house/screens/list/search_section.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: const [
              HeaderSection(),
              SizedBox(height: 20),
              SearchSection(),
              SizedBox(height: 20),
              CategorySection(),
            ],
          ),
        ),
      ),
    );
  }
}
