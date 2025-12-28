import 'package:flutter/material.dart';

class LongButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color color;
  final double borderRadius;
  final EdgeInsets padding;
  final bool isActive;

  const LongButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.color = Colors.white,
    this.borderRadius = 40,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: isActive
              ? const Color(0xFF1E1E1E)
              : const Color(0XFFF2F2F2),
          foregroundColor: isActive ? Colors.white : const Color(0xFF1E1E1E),
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: isActive
                ? BorderSide.none
                : const BorderSide(color: Color(0xFFBCBCBC), width: 1),
          ),
        ),
        child: SizedBox(
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
