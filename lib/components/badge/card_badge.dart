import 'package:flutter/material.dart';

class CardBadge extends StatelessWidget {
  final String? textCount;
  final String? textSpec;
  final Color backgroundColor;
  final Widget? icon;

  const CardBadge({
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
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (icon != null) icon!,
          if (icon != null && (textCount != null || textSpec != null))
            const SizedBox(width: 4),

          Row(
            children: [
              if (textCount != null)
                Text(
                  textCount!,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),

              if (textCount != null && textSpec != null)
                const SizedBox(width: 4),

              if (textSpec != null)
                Text(
                  textSpec!,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
