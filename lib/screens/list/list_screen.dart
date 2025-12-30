import 'package:ananta_house/screens/list/building_section.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            children: [
              const HeaderSection(),
              const SizedBox(height: 20),
              Expanded(
                child: CustomScrollView(
                  slivers: const [
                    SliverToBoxAdapter(child: SearchSection()),
                    SliverToBoxAdapter(child: SizedBox(height: 20)),
                    SliverToBoxAdapter(child: CategorySection()),
                    SliverToBoxAdapter(child: SizedBox(height: 24)),
                    SliverToBoxAdapter(child: BuildingSection()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
