import 'package:ananta_house/screens/list/building_section.dart';
import 'package:ananta_house/screens/list/category_section.dart';
import 'package:ananta_house/screens/list/header_section.dart';
import 'package:ananta_house/screens/list/search_section.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _scrollOffset = _scrollController.offset;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double blurOpacity = (_scrollOffset / 100).clamp(0.0, 1.0);

    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomScrollView(
                controller: _scrollController,
                slivers: const [
                  SliverToBoxAdapter(child: SizedBox(height: 60)),
                  SliverToBoxAdapter(child: SizedBox(height: 20)),
                  SliverToBoxAdapter(child: SearchSection()),
                  SliverToBoxAdapter(child: SizedBox(height: 20)),
                  SliverToBoxAdapter(child: CategorySection()),
                  SliverToBoxAdapter(child: SizedBox(height: 24)),
                  SliverToBoxAdapter(child: BuildingSection()),
                ],
              ),
            ),
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 8 * blurOpacity,
                  sigmaY: 8 * blurOpacity,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    // ignore: deprecated_member_use
                    color: Colors.white.withOpacity(0.7 * blurOpacity),
                    border: Border(
                      bottom: BorderSide(
                        // ignore: deprecated_member_use
                        color: Colors.grey.withOpacity(0.2 * blurOpacity),
                        width: 1,
                      ),
                    ),
                  ),
                  child: SafeArea(
                    bottom: false,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 8, 20, 12),
                      child: const HeaderSection(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
