import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pattama Shop',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: const Color.fromARGB(255, 218, 19, 191),
        ),
      ),
      home: const MyHomePage(title: 'Calculate Change'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
var price = TextEditingController();
var amount = TextEditingController();
var change = TextEditingController();
double _total = 0;
double _change = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Change Calculation", style: TextStyle(fontFamily: "maa",
            fontSize: 48, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.deepPurple, backgroundColor: Colors.blue),),
            Image.asset("images/apple-iphone-jet-black-mobile-png-10.png", height: 240,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: priceTextField(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: amountTextField(),
            ),
            SizedBox(height: 8),
            calculateButton(),
            showTotalText(),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: receiveMoneyTextField(),
            ),
            SizedBox(height: 8),
            changeCalculateButton(),
            showChangeText(),
          ],
        ),
      ),
    );
  }

Widget priceTextField() {
  return TextField(
    controller: price,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: "price per item",
    ),
    keyboardType: TextInputType.numberWithOptions(),
  );
}

Widget amountTextField() {
   return TextField(
    controller: amount,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: "amount of item",
    ),
    keyboardType: TextInputType.numberWithOptions(),
  );
}

Widget calculateButton() {
  return ElevatedButton(onPressed: () {
    if(price.text.isNotEmpty && amount.text.isNotEmpty){
      setState(() {
        _total = double.parse(price.text)*double.parse(amount.text);
    
      });
    }
  }, child: Text("Calculate Total"));
}

Widget showTotalText() {
  return Text("Total: $_total Bath");
}

Widget receiveMoneyTextField() {
     return TextField(
      controller: change,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: "get money",
    ),
    keyboardType: TextInputType.numberWithOptions(),
  );
}

Widget changeCalculateButton() {
  return ElevatedButton(onPressed: (){
    if(price.text.isNotEmpty && amount.text.isNotEmpty){
      setState(() {
        _change = double.parse(change.text)-_total;
    
      });
    }
  }, child: Text("Calculate Change"));
}

Widget showChangeText() {
  return Text("Change: $_change:Baht");
}

  
}

