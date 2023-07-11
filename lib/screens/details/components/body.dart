import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';

import 'action_buttons.dart';
import 'icon_card.dart';
import 'image_and_icons.dart';
import 'title_with_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return const SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          ImageAndIcons(),
          TitleWithPrice(
            title: "Angelica",
            country: "Russia",
            price: 440,
          ),
          ActionButtons()
        ],
      ),
    );
  }
}
