import 'dart:convert';

import 'package:app3/pages/Detaill.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  // const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => Home_State();
}

class Home_State extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Impressionism art app"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: FutureBuilder(
            builder: (context, snapshot) {
              var data = json.decode(snapshot.data.toString());
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Mybox(data[index]['title'], data[index]['subtitle'],
                      data[index]['nationality'], data[index]['image_url']);
                },
                itemCount: data.length,
              );
            },
            future:
                DefaultAssetBundle.of(context).loadString('assets/data.json'),
          )),
    );
  }

  Widget Mybox(
      String title, String subtitle, String nationality, String img_url) {
    var v1, v2, v3, v4;
    v1 = title;
    v2 = subtitle;
    v3 = nationality;
    v4 = img_url;

    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(20),
      height: 180,
      decoration: BoxDecoration(
          color: Colors.blue[200],
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(img_url),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.darken))),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              nationality,
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(
              height: 3,
            ),
            Text(subtitle, style: TextStyle(fontSize: 14, color: Colors.white)),
            SizedBox(
              height: 14,
            ),
            TextButton(
                onPressed: () {
                  print("next page >>");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Detaill(v1,v2,v3,v4)));
                },
                child: Text("read more"))
          ]),
    );
  }
}
