import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onClear;
  final String hintText;

  const SearchInput({
    super.key,
    required this.controller,
    this.onChanged,
    this.onClear,
    this.hintText = 'Search your home...',
  });

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: BorderSide.none,
    );

    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFF9E9E9E),
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'Montserrat',
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 14, right: 12),
          child: const Icon(
            LucideIcons.search,
            color: Color(0xFF1E1E1E),
            size: 20,
          ),
        ),

        prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        suffixIcon: controller.text.isNotEmpty
            ? IconButton(
                onPressed: () {
                  controller.clear();
                  onClear?.call();
                },
                icon: const Icon(
                  LucideIcons.x,
                  color: Color(0xFF1E1E1E),
                  size: 20,
                ),
              )
            : null,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          borderSide: BorderSide.none,
        ),
        enabledBorder: border,
        focusedBorder: border,
      ),
    );
  }
}
