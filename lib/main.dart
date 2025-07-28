import 'package:flutter/material.dart';
import 'package:health_pal/features/onboarding/presentation/screens/onboarding_1.dart';

void main() {
  runApp(const EntryPoint());
}

class EntryPoint extends StatelessWidget {
  const EntryPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Health Pal', home: const Onboarding1());
  }
}
