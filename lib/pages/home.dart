import 'package:firstapp/pages/details.dart';
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
          MyBox("What is a computer?", "A computer is a machine that can be programmed to automatically.","https://cdn.pixabay.com/photo/2015/05/15/02/07/computer-767781_1280.jpg"),
          SizedBox(height: 24),
          MyBox("What is a flutter?", "Flutter is an open-source UI software development kit created by Google.","https://cdn.pixabay.com/photo/2015/05/15/02/07/computer-767781_1280.jpg"),
          SizedBox(height: 24),
          MyBox("What is a Dart?", "Dart is a general-purpose programming language developed by Google.","https://cdn.pixabay.com/photo/2015/05/15/02/07/computer-767781_1280.jpg"),
        ],
      ),
    );
  }

  Widget MyBox(String title, String subtitle, String image_link) {
    return Container(
      padding: EdgeInsets.all(24),
      height: 185,
      decoration: BoxDecoration(
        color: Colors.deepPurple[200],
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(image:   NetworkImage(image_link),
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
           SizedBox(height: 24,),
           TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> DeatilsPage()));
           }, child: Text("read more", style: TextStyle(color: const Color.fromARGB(255, 206, 160, 175),)))
        ],
      ),
    );
  }
}
