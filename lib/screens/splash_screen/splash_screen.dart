import 'dart:async';

import 'package:botanix/core/colors/App_colors.dart';
import 'package:botanix/screens/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../utils/responsive.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /// Animation
            SizedBox(height: Responsive.height(context, 15)),
            Center(
              child: Lottie.asset(
                'assets/animations/Plant2.json',
                height: Responsive.height(context, 50),

              ),
            ),

            /// App name
            // SizedBox(height: Responsive.height(context, 3)),
            Text(
              "BOTANIX",
              style: GoogleFonts.abhayaLibre(
                fontSize: Responsive.fontSize(context, 60),
                fontWeight: FontWeight.bold,
                color: AppColors.darkGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
