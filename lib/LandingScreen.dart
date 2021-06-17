import 'package:flutter/material.dart';
import 'LandingScreenBody.dart';
import 'colors.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgcolor,
      body: LandingScreenBody(),
    );
  }
}
