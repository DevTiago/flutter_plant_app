import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:plant_app/components/recommended_plants.dart';
import 'package:plant_app/components/title_with_more_btn.dart';
import 'package:plant_app/components/featured_plants.dart';
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
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}


