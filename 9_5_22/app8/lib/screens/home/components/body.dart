import 'package:app8/constants.dart';
import 'package:app8/screens/home/components/herder_with_searchbox.dart';
import 'package:app8/screens/home/components/recommend_plants.dart';
import 'package:app8/screens/home/components/title_with_more_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HaderWithSearchBox(size: size),
          TitleWithMoreBtn(),
          RecommendsPlants()
        ],
      ),
    );
  }
}

