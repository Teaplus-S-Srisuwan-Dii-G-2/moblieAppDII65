import 'package:flutter/material.dart';


class Detaill extends StatefulWidget {
  const Detaill({ Key? key }) : super(key: key);

  @override
  State<Detaill> createState() => _DetaillState();
}

class _DetaillState extends State<Detaill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details")),
      body: ListView(
        children: [
          Text("Details 1")
        ],
      ),
      
    );
  }
}