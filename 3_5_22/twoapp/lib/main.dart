import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Age-prediction App")),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(40,10,40,60),
          child: Center(
              child: Column(
            children: [
              Text("Age-prediction",style: TextStyle(
                                fontFamily: "OleoScriptSwashCaps-Bold",
                                fontSize: 72)),
              SizedBox(height: 8),
              Image.asset("assets/Beethoven.jpg",width: 450,
                                              height: 600,
                                              fit:BoxFit.fill),
              SizedBox(height: 8),
              Text("Input his Age",style: TextStyle(
                                fontFamily: "OleoScriptSwashCaps-Bold",
                                color: Color.fromARGB(255, 59, 141, 218),
                                fontSize: 40)),
              SizedBox(height: 24),
              TextField(
                decoration:
                    InputDecoration(labelText: "Age", border: OutlineInputBorder()),
              ),
              SizedBox(height: 16),
              ElevatedButton(onPressed: () {}, child: Text("prediction",style: TextStyle(
                                fontFamily: "OleoScriptSwashCaps-Regular",fontSize: 24))),
              SizedBox(height: 24),
              Text("                 Ludwig van Beethoven, (baptized December 17, 1770, Bonn, archbishopric of Cologne [Germany]—died March 26, 1827, Vienna, Austria), German composer, the predominant musical figure in the transitional period between the Classical and Romantic eras.",style: TextStyle(
                                fontFamily: "OleoScriptSwashCaps-Regular",fontSize: 16))
            ],

          )),
        ),
      ],
    );
  }
}
