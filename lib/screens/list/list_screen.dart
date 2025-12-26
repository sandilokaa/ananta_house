import 'package:ananta_house/components/button/circle_button.dart';
import 'package:ananta_house/components/input/search_input.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1E1E1E),
                    ),
                  ),
                  Row(
                    children: [
                      CircleButton(
                        badgeCount: 3,
                        onTap: () {},
                        child: const Icon(
                          LucideIcons.bell,
                          size: 24,
                          color: Color(0xFF1E1E1E),
                        ),
                      ),
                      const SizedBox(width: 8),
                      CircleButton(
                        color: Color(0xFF1E1E1E),
                        child: ClipOval(
                          child: Image.network('https://i.pravatar.cc/150'),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: SearchInput(
                      controller: searchController,
                      onChanged: (value) {
                        print('Search: $value');
                      },
                      onClear: () {
                        print('Cleared');
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
