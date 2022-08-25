import 'package:flutter/material.dart';
import 'package:mobile_ui_screen_series/colors.dart';

class ImageAndText extends StatelessWidget {
  ImageAndText({Key? key, required this.image, required this.text})
      : super(key: key);
  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 110,
            height: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(image)))),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: const TextStyle(color: AppColors.lightBlue),
        )
      ],
    );
  }
}
