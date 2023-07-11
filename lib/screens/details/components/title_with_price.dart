import 'package:flutter/material.dart';
import '../../../constants.dart';

class TitleWithPrice extends StatelessWidget {
  final String title, country;
  final int price;

  const TitleWithPrice({
    super.key,
    required this.title,
    required this.country,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding),
      child: Row(
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "$title\n",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: kTextColor, fontWeight: FontWeight.bold)),
            TextSpan(
                text: country,
                style: const TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300)),
          ])),
          const Spacer(),
          Text(
            '\$$price',
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
