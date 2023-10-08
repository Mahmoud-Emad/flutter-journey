import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
// import 'package:transparent_image/transparent_image.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Image.network(
        meal.imageUrl,
        width: double.infinity,
        fit: BoxFit.cover,
        height: 300,
      ),
      // body: FadeInImage(
      //   placeholder: MemoryImage(kTransparentImage),
      //   image: NetworkImage(meal.imageUrl),
      //   fit: BoxFit.cover,
      //   height: 200,
      //   width: double.infinity,
      // ),
    );
  }
}
