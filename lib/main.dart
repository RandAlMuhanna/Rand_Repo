import 'package:flutter/material.dart';
import 'screens/onboarding.dart';
import 'screens/homescreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}
