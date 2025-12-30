import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final Color color;
  final double height;
  final double width;
  final int? badgeCount;

  const CircleButton({
    super.key,
    required this.child,
    required this.onTap,
    this.color = Colors.white,
    this.height = 50,
    this.width = 50,
    this.badgeCount,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(50),
          onTap: onTap,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Center(child: child),
          ),
        ),

        if (badgeCount != null && badgeCount! > 0)
          Positioned(
            top: 8,
            right: 10,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFD54644),
                shape: BoxShape.circle,
              ),
              height: 16,
              width: 16,
              child: Center(
                child: Text(
                  badgeCount! > 9 ? '9+' : badgeCount.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
