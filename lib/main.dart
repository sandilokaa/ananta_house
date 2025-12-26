import 'package:ananta_house/screens/start/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AnantaHouse());
}

class AnantaHouse extends StatelessWidget {
  const AnantaHouse({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ananta House',
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xFFF2F2F2)),
      home: const StartScreen(),
    );
  }
}
