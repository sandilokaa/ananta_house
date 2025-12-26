import 'package:ananta_house/screens/list/list_screen.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import '../../components/button/primary_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/images/start_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'HOSE',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      LucideIcons.alignJustify,
                      color: Colors.white,
                      size: 24,
                    ),
                  ],
                ),

                SizedBox(height: 50),

                Text(
                  'FIND YOUR DREAM HOME',
                  style: TextStyle(
                    fontSize: 52,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),

                Spacer(),

                Text(
                  textAlign: TextAlign.center,
                  'Explore the best property listings with trusted information, transparent pricing, and a smooth buying experience.',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),

                SizedBox(height: 20),

                PrimaryButton(
                  text: 'Get Started',
                  foregroundColor: const Color(0xFF1E1E1E),
                  borderRadius: 40,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return ListScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
