import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:appeteaser_app/constants.dart';
import 'package:appeteaser_app/screens/qr_scanner/qr_scan_screen.dart';
import '../../../size_config.dart';

class ScanCodeButton extends StatelessWidget {
  const ScanCodeButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90,
      width: double.infinity,
      margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: FlatButton(
        padding: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        height: getProportionateScreenHeight(56),
        onPressed: () {
          Navigator.pushNamed(context, QRScanScreen.routeName);
        },
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/icons/barcode.svg",
              color: Colors.white,
              height: 30,
            ),
            SizedBox(width: 60),
            Expanded(
              child: Text(
                "Code Scannen",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
