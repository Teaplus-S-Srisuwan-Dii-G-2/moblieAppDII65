import 'package:app8/constants.dart';
import 'package:flutter/material.dart';


class RecommendsPlants extends StatelessWidget {
  const RecommendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantsCard(
            image: "assets/images/image_1.png",
            title: "Chiang Mai",
            county: "Thailand",
            price: 440,
            press: () {},
          ),RecommendPlantsCard(
            image: "assets/images/image_2.png",
            title: "Soul",
            county: "Korea",
            price: 870,
            press: () {},
          ),RecommendPlantsCard(
            image: "assets/images/image_3.png",
            title: "Tokyo",
            county: "jpan",
            price: 1200,
            press: () {},
          ),RecommendPlantsCard(
            image: "assets/images/image_1.png",
            title: "Chiang Mai",
            county: "Thailand",
            price: 440,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecommendPlantsCard extends StatelessWidget {
  const RecommendPlantsCard({
    Key? key,
    required this.image,
    required this.title,
    required this.county,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, county;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: Column(children: [
        Image.asset(image),
        GestureDetector(
          onTap: press(),
          child: Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23))
                ]),
            child: Row(children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "$title\n".toUpperCase(),
                    style: Theme.of(context).textTheme.button),
                TextSpan(
                    text: "$county".toUpperCase(),
                    style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
              ])),
              Spacer(),
              Text(
                '\$$price',
                style: Theme.of(context)
                    .textTheme
                    .button!
                    .copyWith(color: kPrimaryColor),
              )
            ]),
          ),
        )
      ]),
    );
  }
}
