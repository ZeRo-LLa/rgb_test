import 'package:flutter/material.dart';
import 'package:rgb_task/features/home_screen.dart';
import 'theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Changer',
      theme: appTheme,
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
