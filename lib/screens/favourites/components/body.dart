import 'package:flutter/material.dart';

import 'list_of_scanned_items.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [ListOfScannedItems()],
        ),
      ),
    );
  }
}
