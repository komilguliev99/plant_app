import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/titleWithUnderline.dart';
import '../../../constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  final String title;
  final Function press;
  const TitleWithMoreBtn({super.key, required this.title, required this.press});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(
            text: title,
          ),
          const Spacer(),
          TextButton(
              onPressed: () => press(),
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                  backgroundColor:
                      const MaterialStatePropertyAll(kPrimaryColor)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('More',
                    style: TextStyle(fontSize: 16, color: Colors.white)),
              ))
        ],
      ),
    );
  }
}
