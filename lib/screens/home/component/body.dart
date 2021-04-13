import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/component/recommend_plants.dart';
import 'package:plant_app/screens/home/component/title_with_more_bttn.dart';

import 'featured_plants.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWithSearchBox(size: size),
          SizedBox(height: 20),
          TitleWithMoreBttn(
            title: 'Recomended',
            press: () {},
          ),
          RecommendPlants(),
          TitleWithMoreBttn(
            title: 'Featured Plants',
            press: () {},
          ),
          FeaturedPlants()
        ],
      ),
    );
  }
}
