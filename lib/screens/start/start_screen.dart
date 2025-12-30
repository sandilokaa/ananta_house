import 'package:ananta_house/screens/list/list_screen.dart';
import 'package:flutter/material.dart';
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
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 50),

                Text(
                  'FIND YOUR DREAM HOME',
                  style: TextStyle(
                    fontSize: 52,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                  ),
                ),

                Spacer(),

                Text(
                  textAlign: TextAlign.center,
                  'Explore the best property listings with trusted information, transparent pricing, and a smooth buying experience.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),

                SizedBox(height: 20),

                PrimaryButton(
                  text: 'Get Started',
                  foregroundColor: const Color(0xFF1E1E1E),
                  fontWeight: FontWeight.w600,
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
