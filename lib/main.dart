import 'package:flutter/material.dart';
import 'package:shopping_app/constant.dart';
import 'package:shopping_app/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping app',
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor)),
      home: const HomeScreen(),
    );
  }
}
