import 'package:app_shirt/src/pages/home/widgets/header_with_seachbox.dart';
import 'package:app_shirt/src/pages/home/widgets/recomend_plants.dart';
import 'package:app_shirt/src/pages/home/widgets/title_with_more_bbtn.dart';
import 'package:app_shirt/src/utils/contrains.dart';
import 'package:flutter/material.dart';

import 'featurred_plants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          RecomendsShirt(),
          TitleWithMoreBtn(title: "Featured ", press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
