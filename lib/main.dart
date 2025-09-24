import 'package:city1051fm/src/splashscreen/views/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'City 105.5 FM',
      theme: ThemeData(primarySwatch: Colors.orange),
      debugShowCheckedModeBanner: true,
      home: const SplashScreen(),
    );
  }
}
