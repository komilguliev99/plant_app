import 'package:flutter/material.dart';

import 'feature_plant_card.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
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
            press: () {},
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_img_2.png",
            press: () {},
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}
