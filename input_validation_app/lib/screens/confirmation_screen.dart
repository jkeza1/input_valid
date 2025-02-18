import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
  final String address;

  ConfirmationScreen({required this.name, required this.email, required this.phone, required this.address});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Confirmation')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: $name', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),SizedBox(height: 10),
            Text('Email: $email', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),SizedBox(height: 10),
            Text('Phone: $phone', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),SizedBox(height: 10),
            Text('Address: $address', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to the form screen
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
