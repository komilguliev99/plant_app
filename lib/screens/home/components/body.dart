import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';
import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'recomends_plants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomended",
            press: () {},
          ),
          const RecomendsPlants(),
          TitleWithMoreBtn(title: "Featured Plants", press: () {}),
          const FeaturedPlants(),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
