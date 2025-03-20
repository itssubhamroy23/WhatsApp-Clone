import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/Login/login_screen.dart';
import 'package:whatsapp_clone/widgets/uihelper.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/banner.png'),
            const SizedBox(
              height: 20,
            ),
            Uihelper.customText(
                text: "Welcome to WhatsApp", height: 20, color: Colors.black),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customText(text: "Read out ", height: 14),
                Uihelper.customText(
                    text: "Privacy Policy ",
                    height: 14,
                    color: Color(0XFF0C42CC)),
                Uihelper.customText(
                  text: "Tap 'Agree and continue'",
                  height: 14,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.customText(
                  text: "to accept the ",
                  height: 14,
                ),
                Uihelper.customText(
                    text: "Teams of Service. ",
                    height: 14,
                    color: Color(0XFF0C42CC)),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Uihelper.customButton(
          callback: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
          buttonname: "Agree and Continue"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
