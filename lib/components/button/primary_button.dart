import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  final Color backgroundColor;
  final Color foregroundColor;
  final double height;
  final double borderRadius;
  final double fontSize;
  final FontWeight fontWeight;
  final EdgeInsets padding;
  final Widget? leading;
  final Widget? trailing;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = Colors.white,
    this.foregroundColor = const Color(0xFF1E1E1E),
    this.height = 60,
    this.borderRadius = 12,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w700,
    this.padding = const EdgeInsets.symmetric(horizontal: 12),
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          padding: padding,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: SizedBox(
          height: height,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  color: foregroundColor,
                  fontFamily: 'Montserrat',
                ),
              ),

              Positioned(
                right: 0,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xFF1E1E1E),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    LucideIcons.chevronRight,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
