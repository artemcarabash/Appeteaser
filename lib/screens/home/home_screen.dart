import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:appeteaser_app/components/coustom_bottom_nav_bar.dart';
import 'package:appeteaser_app/enums.dart';

import '../../size_config.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/Star Icon.svg"),
        onPressed: () {},
      ),
      centerTitle: true,
      title: RichText(
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
    );
  }
}
