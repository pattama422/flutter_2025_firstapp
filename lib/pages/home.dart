import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ListView(
        children: [
          MyBox(),
          SizedBox(height: 24),
          MyBox(),
          SizedBox(height: 24),
          MyBox(),
        ],
      ),
    );
  }

  Widget MyBox() {
    return Container(
      padding: EdgeInsets.all(24),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.deepPurple[200],
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(image:   NetworkImage("https://cdn.pixabay.com/photo/2015/05/15/02/07/computer-767781_1280.jpg"),
        fit: BoxFit.cover),
        
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("What is a computer?", style: TextStyle(fontSize: 25)),
          Text(
            "A computer is a machine that can be programmed to automatically carry out sequences of arithmetic or logical operations (computation).",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
