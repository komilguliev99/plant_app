import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturePlantCard extends StatelessWidget {
  final String image;
  final Function press;
  const FeaturePlantCard({super.key, required this.image, required this.press});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => press(),
      child: Container(
          width: size.width * 0.8,
          height: 185,
          margin: const EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding / 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(image)))),
    );
  }
}
