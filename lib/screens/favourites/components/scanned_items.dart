import 'package:flutter/material.dart';
import 'package:appeteaser_app/models/ScannedProduct.dart';
import 'package:appeteaser_app/screens/details/details_screen.dart';

import '../../../size_config.dart';

class ScannedItems extends StatelessWidget {
  Color parseRating(int rating) {
    switch (rating) {
      case 1:
        return Colors.green;
        break;
      case 2:
        return Colors.yellow[700];
        break;
      case 3:
        return Colors.red;
        break;
      default:
        return Colors.green;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          demoProducts.length,
          (index) => ScannedItemCard(
            image: demoProducts[index].image,
            product_name: demoProducts[index].productName,
            producer_name: demoProducts[index].producerName,
            ratingColor: parseRating(demoProducts[index].rating),
            rating: demoProducts[index].rating,
            press: () {
              Navigator.pushNamed(context, DetailsScreen.routeName,
                  arguments:
                      ProductDetailsArguments(product: demoProducts[index]));
            },
          ),
        ),
      ),
    );
  }
}

class ScannedItemCard extends StatelessWidget {
  const ScannedItemCard({
    Key key,
    @required this.product_name,
    @required this.image,
    @required this.producer_name,
    @required this.ratingColor,
    @required this.rating,
    @required this.press,
  }) : super(key: key);

  final String product_name, producer_name, image;
  final int rating;
  final Color ratingColor;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        height: getProportionateScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: ratingColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                      height: getProportionateScreenWidth(55),
                      width: getProportionateScreenWidth(55),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(15.0),
                        vertical: getProportionateScreenWidth(10),
                      ),
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(
                              text: "$product_name\n",
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(18),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(text: "$producer_name")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
