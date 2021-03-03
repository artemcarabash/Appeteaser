import 'package:flutter/material.dart';

import 'scan_code_button.dart';
import 'list_of_scanned_items.dart';
import 'water_ripple.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: 200, width: 200, child: WaterRipple()),
            ListOfScannedItems()
          ],
        ),
      ),
    );
  }
}
