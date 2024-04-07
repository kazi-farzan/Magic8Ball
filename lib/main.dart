import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      const MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    const prussianBlue = Color(0xff13293D);
    const lapisLazuli = Color(0xff006494);
    return Scaffold(
      backgroundColor: lapisLazuli,
      appBar: AppBar(
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 30.0, fontFamily: 'DancingScript'),
        title: const Text(
          'Ask Me Anything',
        ),
        backgroundColor: prussianBlue,
        centerTitle: true,
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  ballNumber = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
