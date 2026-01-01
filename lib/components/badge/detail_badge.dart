import 'package:flutter/material.dart';

class DetailBadge extends StatelessWidget {
  final String? textCount;
  final String? textSpec;
  final Color backgroundColor;
  final Widget? icon;

  const DetailBadge({
    super.key,
    this.textCount,
    this.textSpec,
    this.backgroundColor = Colors.white,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    if (textCount == null && textSpec == null && icon == null) {
      return const SizedBox.shrink();
    }

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (icon != null) icon!,
          if (icon != null && (textCount != null || textSpec != null))
            const SizedBox(height: 16),

          if (textCount != null)
            Text(
              textCount!,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1E1E1E),
                fontFamily: 'Montserrat',
              ),
            ),

          if (textCount != null && textSpec != null) const SizedBox(height: 2),

          if (textSpec != null)
            Text(
              textSpec!,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Color(0xFFBCBCBC),
                fontFamily: 'Montserrat',
              ),
            ),
        ],
      ),
    );
  }
}
