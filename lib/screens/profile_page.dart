import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            SizedBox(height: 10),
            Text('John Doe', style: TextStyle(fontSize: 20)),
            Text('john.doe@example.com', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
