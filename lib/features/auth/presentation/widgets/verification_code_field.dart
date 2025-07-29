import 'package:flutter/material.dart';

class VerificationCodeField extends StatelessWidget {
  const VerificationCodeField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(5, (index) {
        return Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: Color.fromRGBO(243, 244, 246, 1),
            borderRadius: BorderRadius.circular(12),
            border: BoxBorder.all(
              color: Color.fromRGBO(229, 231, 235, 1),
              width: 1,
            ),
          ),
          child: TextField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            maxLength: 1,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(28, 42, 58, 1),
            ),
            decoration: InputDecoration(
              counterText: '',
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
            ),
          ),
        );
      }),
    );
  }
}
