import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                // Handle Purchase History button click
              },
              child: const Text('Purchase History'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Payment Option button click
              },
              child: const Text('Payment Option'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle My Reviews button click
              },
              child: const Text('My Reviews'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle My List button click
              },
              child: const Text('My List'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Account Settings button click
              },
              child: const Text('Account Settings'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Help Center button click
              },
              child: const Text('Help Center'),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle Log Out button click
              },
              child: const Text('Log Out'),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
