import 'package:flutter/material.dart';
import 'package:appeteaser_app/screens/qr_scanner/components/ean_footer_with_button.dart';

import 'components/qr_scanner.dart';

class QRScanScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: QRViewWidget(),
      bottomNavigationBar: EanFooterWithButton(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Code Scannen",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
      leading: new IconButton(
        icon: new Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
