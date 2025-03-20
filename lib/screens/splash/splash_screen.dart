import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/OnBoarding/onboarding_page.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => OnboardingPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            const SizedBox(
              height: 20,
            ),
            Uihelper.customText(
                text: 'WhatsApp', height: 18, fontweight: FontWeight.bold)
          ],
        ),
      ),
    );
  }
}
