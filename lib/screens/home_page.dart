import 'package:flutter/material.dart';
import 'profile_page.dart';
import 'meals_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MealMate')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to MealMate!', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (ctx) => ProfilePage())),
              child: Text('Go to Profile'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (ctx) => MealsPage())),
              child: Text('Explore Meals'),
            ),
          ],
        ),
      ),
    );
  }
}
