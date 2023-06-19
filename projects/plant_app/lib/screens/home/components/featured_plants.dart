import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class FeaturePlants extends StatelessWidget {
  const FeaturePlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            image: "assets/images/bottom_img_1.png",
            onPress: () {},
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_img_2.png",
            onPress: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    super.key,
    required this.image,
    required this.onPress,
  });

  final String image;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefualtPadding / 2,
          right: kDefualtPadding,
          top: kDefualtPadding / 2,
          bottom: kDefualtPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
