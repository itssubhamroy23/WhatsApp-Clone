import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0XFF00A884)),
          useMaterial3: false,
          fontFamily: "Regular"),
      // ignore: prefer_const_constructors
      home: SplashScreen(),
    );
  }
}
