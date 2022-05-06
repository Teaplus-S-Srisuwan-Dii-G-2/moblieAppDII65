import 'dart:html';

import 'package:flutter/material.dart';

class Detaill extends StatefulWidget {
  // const Detaill({Key? key}) : super(key: key);
  final v1, v2, v3, v4;
  Detaill(this.v1, this.v2, this.v3, this.v4);

  @override
  State<Detaill> createState() => _DetaillState();
}

class _DetaillState extends State<Detaill> {
  var _v1, _v2, _v3, _v4;
  @override
  void initState() {
    super.initState();
    _v1 = widget.v1;
    _v2 = widget.v2;
    _v3 = widget.v3;
    _v4 = widget.v4;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("D"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Text(_v1),
            Text(_v2),
            Text(_v3),
            Image.network(_v4),
          ],
        ),
      ),
    );
  }
}
