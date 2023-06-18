import 'package:flutter/material.dart';
// import 'package:plant_app/constants.dart';

import 'recomends_plants.dart';
import 'title_with_more_btn.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It'll provide us the total height and width of the screen.
    Size size = MediaQuery.of(context).size;
    // It'll enable scrolling on small devices.
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", onPress: () {}),
          const RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Plantes", onPress: () {}),
        ],
      ),
    );
  }
}
