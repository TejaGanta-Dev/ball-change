import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Ballpage());
}

class Ballpage extends StatelessWidget {
  const Ballpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.blue[900],
          child: const Ball(),
        ),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballState=Random().nextInt(4)+1;
  updateBallState(){
    setState(() {
      ballState=Random().nextInt(4)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton( onPressed: (){
        // ignore: avoid_print
        updateBallState();
      },
        child: Image.asset('images/ball$ballState.png')),
    );
  }
}
