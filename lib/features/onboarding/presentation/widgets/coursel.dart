import 'package:flutter/material.dart';

class Coursel extends StatelessWidget {
  final int currentIndex;
  final int totalPages;
  final Color? activeColor;
  final Color? inactiveColor;

  const Coursel({
    super.key,
    required this.currentIndex,
    required this.totalPages,
    this.activeColor,
    this.inactiveColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        totalPages,
        (index) => Container(
          width: index == currentIndex ? 24 : 8,
          height: 8,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: index == currentIndex
                ? (activeColor ?? const Color(0xFF2D3748))
                : (inactiveColor ?? Colors.grey.shade300),
            borderRadius: BorderRadius.circular(3),
          ),
        ),
      ),
    );
  }
}
