import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_home_ui_app/colors.dart';

import 'ControlButton.dart';
import 'SensorScreen.dart';

class LandingScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: size.height * 0.1,
          ),
          Center(
            child: Text(
              "What do you think you\'ll\nmostly use?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 25,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          Center(
            child: Text(
              "Tap on all that apply.This will help us\ncustomize your home page.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kDarkGreycolor,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ControlButton(
                size: size,
                title: "Maintenance\nRequests",
                icon: Icons.settings_outlined,
              ),
              ControlButton(
                size: size,
                title: "Integration\n",
                icon: Icons.grain,
              ),
              ControlButton(
                size: size,
                title: "Light\nControl",
                icon: Icons.highlight,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ControlButton(
                size: size,
                title: "Leak\nDetector",
                icon: Icons.opacity,
              ),
              ControlButton(
                size: size,
                title: "Temparature\nControl",
                icon: Icons.ac_unit,
              ),
              ControlButton(
                size: size,
                title: "Guest\nAccess",
                icon: Icons.vpn_key,
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          DefaultButton(size: size, title: "Next", press: (){
            Navigator.push(
                context, CupertinoPageRoute(builder: (context) => SensorScreen()));
          },
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
        ],
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    @required this.size, this.title, this.press,
  }) : super(key: key);

  final Size size;
  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: size.height * 0.07,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kOrangcolor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: kOrangcolor.withOpacity(0.5),
                blurRadius: 15,
                offset: Offset(0, 12)),
            BoxShadow(
                color: kOrangcolor.withOpacity(0.5),
                blurRadius: 40,
                offset: Offset(-3, -3)),
          ],
        ),
        child: Center(
          child: Text(
            "$title",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
