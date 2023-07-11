import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      child: SizedBox(
        height: size.height * 0.75,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding * 3, horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset("assets/icons/back_arrow.svg")),
                  const Spacer(),
                  const IconCard(icon: "assets/icons/sun.svg"),
                  const IconCard(icon: "assets/icons/icon_2.svg"),
                  const IconCard(icon: "assets/icons/icon_3.svg"),
                  const IconCard(icon: "assets/icons/icon_4.svg"),
                ],
              ),
            )),
            Container(
              height: size.height * 075,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(63),
                      topLeft: Radius.circular(63)),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 15),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.29))
                  ],
                  image: const DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/img.png"))),
            )
          ],
        ),
      ),
    );
  }
}
