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
          MyBox("What is a computer?", "A computer is a machine that can be programmed to automatically carry out sequences of arithmetic or logical operations (computation)."),
          SizedBox(height: 24),
          MyBox("What is a flutter?", "Flutter is an open-source UI software development kit created by Google."),
          SizedBox(height: 24),
          MyBox("What is a Dart?", "Dart is a general-purpose programming language developed by Google, designed for building web, server, and mobile applications."),
        ],
      ),
    );
  }

  Widget MyBox(String title, String subtitle) {
    return Container(
      padding: EdgeInsets.all(24),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.deepPurple[200],
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(image:   NetworkImage("https://cdn.pixabay.com/photo/2015/05/15/02/07/computer-767781_1280.jpg"),
        fit: BoxFit.cover, 
        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken)),
        
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Text(title, 
          style: TextStyle(fontSize: 25,
          color: Colors.white, 
          fontWeight: FontWeight.bold)),
          SizedBox(height: 24,),
          Text(
           subtitle,
            style: TextStyle(fontSize: 15,
            color: Colors.white),
          ),
        ],
      ),
    );
  }
}
