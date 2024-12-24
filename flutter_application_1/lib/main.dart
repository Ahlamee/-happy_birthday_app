import 'package:flutter/material.dart';

void main() {
  runApp(HappyBirthdayApp());
}

class HappyBirthdayApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Happy Birthday App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: BirthdayScreen(),
    );
  }
}

class BirthdayScreen extends StatefulWidget {
  @override
  _BirthdayScreenState createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> {
  String message = "Happy Birthday!";

  void changeMessage() {
    setState(() {
      message = "Wishing you all the best! 🎉";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Happy Birthday App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: changeMessage,
              child: Text('Tap to Change Message'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
