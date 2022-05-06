import 'package:flutter/material.dart';


class chopin extends StatefulWidget {
  const chopin({ Key? key }) : super(key: key);

  @override
  State<chopin> createState() => _chopinState();
}

class _chopinState extends State<chopin> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text("Chopin")
      ],
    );
  }
}