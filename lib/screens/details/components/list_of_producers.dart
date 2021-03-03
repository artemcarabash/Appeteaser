import 'package:flutter/material.dart';
import 'package:appeteaser_app/models/Producer.dart';
import 'package:appeteaser_app/screens/details/components/producers_list.dart';

import '../../../size_config.dart';

class ListOfProducers extends StatelessWidget {
  const ListOfProducers({
    Key key,
    @required this.producers,
  }) : super(key: key);

  final List<Producer> producers;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: getProportionateScreenWidth(5),
        horizontal: getProportionateScreenWidth(5),
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
            color: Color(0xFFDADADA).withOpacity(0.5),
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: getProportionateScreenWidth(15)),
              child: Text(
                "Producers",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            ProducersList(
              producers: producers,
            )
          ],
        ),
      ),
    );
  }
}
