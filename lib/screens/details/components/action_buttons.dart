import 'package:flutter/material.dart';
import '../../../constants.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(kPrimaryColor),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(20))))),
            child: const Text(
              "Buy Now",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 84,
            child: ElevatedButton(
              onPressed: () {},
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(20))))),
              child: const Text(
                "Descriptiion",
                style: TextStyle(fontSize: 18, color: kTextColor),
              ),
            ),
          ),
        )
      ],
    );
  }
}
