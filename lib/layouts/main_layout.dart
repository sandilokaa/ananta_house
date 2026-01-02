import 'package:ananta_house/components/navigation/floating_bottom_bar.dart';
import 'package:ananta_house/screens/list/list_screen.dart';
import 'package:flutter/material.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;

  final _pages = const [ListScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          IndexedStack(index: _currentIndex, children: _pages),

          Positioned(
            left: 20,
            right: 20,
            bottom: 20,
            child: FloatingBottomBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() => _currentIndex = index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
