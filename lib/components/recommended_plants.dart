import 'package:flutter/material.dart';

import 'package:plant_app/constants.dart';

class RecommendedPlants extends StatelessWidget {
const RecommendedPlants({
Key key,
}) : super(key: key);

@override
Widget build(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    physics: BouncingScrollPhysics(),
    child: Row(
      children: <Widget>[
        RecommendedPlantCard(
          title: "Samantha",
          country: "Russia",
          price: 400,
          image: "assets/images/image_1.png",
          press: () {},
        ),RecommendedPlantCard(
          title: "Samantha",
          country: "Russia",
          price: 260,
          image: "assets/images/image_2.png",
          press: () {},
        ), RecommendedPlantCard(
          title: "Samantha",
          country: "Russia",
          price: 190,
          image: "assets/images/image_3.png",
          press: () {},
        ),
      ],
    ),
  );
}
}

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding,
            bottom: kDefaultPadding * 2.5),
        // it will cover 40% of total screen
        width: size.width * 0.4,
        child: Column(children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
                padding: EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23),
                      ),
                    ]),
                child: Row(
                  children: <Widget>[
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button,
                          ),
                          TextSpan(
                              text: country.toUpperCase(),
                              style:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                        ])),
                    Spacer(),
                    Text(
                      "$price€",
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: kPrimaryColor),
                    )
                  ],
                )),
          )
        ]));
  }
}