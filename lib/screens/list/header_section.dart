import 'package:ananta_house/components/button/circle_button.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
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
              child: const Icon(LucideIcons.bell),
            ),
            const SizedBox(width: 8),
            CircleButton(
              color: Colors.black,
              child: ClipOval(
                child: Image.network('https://i.pravatar.cc/150'),
              ),
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
