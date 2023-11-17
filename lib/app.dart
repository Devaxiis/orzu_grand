import 'package:flutter/material.dart';
import 'package:orzu_grand/src/presentation/home_screen/home_screen.dart';
import 'package:orzu_grand/src/presentation/main_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}