import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/profile_page.dart';
import 'screens/meals_page.dart';

void main() {
  runApp(MealMateApp());
}

class MealMateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MealMate',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'CustomFont', // Replace with your custom font
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/meals': (context) => MealsPage(),
      },
    );
  }
}
