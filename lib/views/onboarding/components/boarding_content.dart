import 'package:ecommerce_application/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_application/utils/const.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({super.key, required this.text, required this.image});

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/logo.png', fit: BoxFit.cover),
        Spacer(),
        Text(
          "Owala",
          style: TextStyle(
            color: primaryColor,
            fontSize: getProporsionateScreenWidht(36), //buat menjadi adaptif
            fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 15),
        Text(text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.amber
        ))
      ],
    );
  }
}
