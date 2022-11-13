import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Ask me anything',
      home: Magic8BallPage(),
    );
  }
}

class Magic8BallPage extends StatelessWidget {
  const Magic8BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ask Me Anything",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: const Magic8Ball(),
      backgroundColor: Colors.blue,
    );
  }
}

class Magic8Ball extends StatefulWidget {
  const Magic8Ball({super.key});

  @override
  State<Magic8Ball> createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballImageNumber = 1;

  void changeBallImageNumber() {
    setState(() {
      ballImageNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset('images/ball$ballImageNumber.png'),
        onPressed: () => changeBallImageNumber(),
      ),
    );
  }
}
