import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plant_app/components/recommended_plants.dart';
import 'package:plant_app/components/title_with_more_btn.dart';
import 'package:plant_app/constants.dart';

import 'package:plant_app/components/header_with_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recommended", press: () {}),
          RecommendedPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: [
                FeaturedPlantCard(image: "assets/images/bottom_img_1.png", press: () {}),
                FeaturedPlantCard(image: "assets/images/bottom_img_2.png", press: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key key, this.image, this.press,
  }) : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
                image: AssetImage(image))),
      ),
    );
  }
}
