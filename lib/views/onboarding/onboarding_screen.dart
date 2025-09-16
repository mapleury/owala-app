import 'package:ecommerce_application/views/onboarding/components/body.dart';
import 'package:ecommerce_application/utils/size_config.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(body: Body());
  }
}
