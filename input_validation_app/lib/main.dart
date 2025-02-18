import 'package:flutter/material.dart';
import 'screens/form_screen.dart';

void main() {
  runApp(MultiFormApp());
}

class MultiFormApp extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'multi-form App',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: FormScreen(), // Set FormScreen as the first screen
    debugShowCheckedModeBanner: false,  // Optional, remove debug banner
      routes: {
        '/secondScreen': (context) => SecondScreen(), // Example second screen
      },
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(child: Text('This is the second screen')),
    );
  }
}