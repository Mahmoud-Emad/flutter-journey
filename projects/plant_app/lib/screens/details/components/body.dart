import 'package:flutter/material.dart';
// import 'package:plant_app/constants.dart';
// import 'package:flutter_svg/svg.dart';

import 'image_and_icons_card.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIconsCard(size: size),
          const TitleAndPrice(
            title: "Mahmoud",
            country: "Egypt",
            price: 450,
          ),
        ],
      ),
    );
  }
}
