import 'package:flutter/material.dart';

class CardBadge extends StatelessWidget {
  final String textCount;
  final String textSpec;
  final Color backgroundColor;
  final Widget icon;

  const CardBadge({
    super.key,
    required this.textCount,
    required this.textSpec,
    this.backgroundColor = Colors.white,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            icon,
            Row(
              children: [
                Text(
                  textCount,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat',
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  textSpec,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
