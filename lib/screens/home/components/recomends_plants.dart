import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';

import '../../../constants.dart';
import 'recomend_plant_card.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        RecomendPlantCard(
          image: 'assets/images/image_1.png',
          title: 'Samantha',
          country: 'Russia',
          price: 450,
          press: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DetailsScreen()));
          },
        ),
        RecomendPlantCard(
          image: 'assets/images/image_2.png',
          title: 'Angelica',
          country: 'Russia',
          price: 450,
          press: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DetailsScreen()));
          },
        ),
        RecomendPlantCard(
          image: 'assets/images/image_3.png',
          title: 'Samantha',
          country: 'Russia',
          price: 450,
          press: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DetailsScreen()));
          },
        ),
        RecomendPlantCard(
          image: 'assets/images/image_1.png',
          title: 'Samantha',
          country: 'Russia',
          price: 450,
          press: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DetailsScreen()));
          },
        )
      ]),
    );
  }
}
