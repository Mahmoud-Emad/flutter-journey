import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
// import 'package:flutter_svg/svg.dart';

import 'image_and_icons_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIconsCard(size: size),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefualtPadding),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Mahmoud\n",
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                                color: kTextColor, fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(
                        text: "Egypt",
                        style: TextStyle(
                          fontSize: 20,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Text(
                  "\$440",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: kPrimaryColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
