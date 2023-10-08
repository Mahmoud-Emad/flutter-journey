import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

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
          const SizedBox(height: kDefualtPadding),
          Row(
            children: [
              SizedBox(
                height: 84,
                width: size.width / 2,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    backgroundColor: kPrimaryColor,
                  ),
                  child: const Text(
                    "Buy Now",
                    style: TextStyle(
                      color: kBackgroundColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 84,
                width: size.width / 2,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  child: const Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
