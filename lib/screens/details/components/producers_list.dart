import 'package:flutter/material.dart';
import 'package:appeteaser_app/models/Producer.dart';

import '../../../size_config.dart';

class ProducersList extends StatelessWidget {
  const ProducersList({
    Key key,
    @required this.producers,
  }) : super(key: key);

  final List<Producer> producers;

  Color parseRating(int rating) {
    switch (rating) {
      case 1:
        return Colors.green;
        break;
      case 2:
        return Colors.yellow;
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
          producers.length,
          (index) => ProducerItemCard(
            title: producers[index].title,
            ean: producers[index].ean,
            description: producers[index].description,
            rating: producers[index].rating,
            ratingColor: parseRating(producers[index].rating),
          ),
        ),
      ),
    );
  }
}

class ProducerItemCard extends StatelessWidget {
  const ProducerItemCard({
    Key key,
    @required this.ean,
    this.rating = 1,
    this.ratingColor,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.description,
  }) : super(key: key);

  final String title, description, ean;
  final int rating;
  final bool isFavourite, isPopular;
  final Color ratingColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
                        "assets/image/Milch.png",
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
                              text: "$title\n",
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(18),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(text: "$ean")
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
