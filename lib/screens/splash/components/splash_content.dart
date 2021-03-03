import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: <TextSpan>[
            TextSpan(
                text: "Appe",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(36),
                  color: Color(0xFFFF0A54),
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(
                text: "teaser",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(36),
                  color: Color(0xFFFFAB40),
                  fontWeight: FontWeight.bold,
                )),
          ]),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
