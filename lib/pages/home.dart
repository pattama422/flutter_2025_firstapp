import 'dart:convert';
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
      child: FutureBuilder(builder: (context, snapshot){
        var data = json.decode(snapshot.data.toString());
        return ListView.builder(itemBuilder: (BuildContext context, int index){
          return MyBox(data[index]["title"], data[index]["subtitle"], data[index]["image_url"]);

        },
        itemCount: data.length);
      },
      future: DefaultAssetBundle.of(context).loadString("data.json")),
    );
  }

  Widget MyBox(String title, String subtitle, String image_url2) {
    return Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.fromLTRB(0,8,0,8),
      height: 185,
      decoration: BoxDecoration(
        color: Colors.deepPurple[200],
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(image:   NetworkImage(image_url2),
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
           }, child: Text("read more", style: TextStyle(color: const Color.fromARGB(255, 206, 160, 175),))),

        ],
      ),
    );
  }
}
