import 'package:flutter/material.dart';
import 'package:appeteaser_app/components/default_button.dart';
import 'package:appeteaser_app/models/ScannedProduct.dart';
import 'package:appeteaser_app/screens/details/details_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class EanFooterWithButton extends StatelessWidget {
  const EanFooterWithButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(15),
        horizontal: getProportionateScreenWidth(30),
      ),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.4),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Manuelle Eingabe:"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: SizeConfig.screenWidth * 0.5,
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    onChanged: (value) => print(value),
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20),
                            vertical: getProportionateScreenWidth(9)),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: "EAN",
                        prefixIcon: Icon(Icons.search)),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.screenWidth * 0.3,
                  child: DefaultButton(
                    text: "Eingeben",
                    press: () {
                      Navigator.pushNamed(context, DetailsScreen.routeName,
                          arguments: ProductDetailsArguments(
                              product: demoProducts[2]));
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
