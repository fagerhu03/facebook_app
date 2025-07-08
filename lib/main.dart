import 'package:facebook/homeScreen.dart';
import 'package:facebook/loginScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FacebookApp());
}

class FacebookApp extends StatelessWidget {
  const FacebookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const loginScreen(),
        '/home': (context) => const homeScreen(),
      },
    );
  }
}
