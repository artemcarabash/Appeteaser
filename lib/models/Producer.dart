import 'package:flutter/material.dart';

class Producer {
  final int id;
  final String title, description, ean;
  final int rating;
  final bool isFavourite, isPopular;

  Producer({
    @required this.id,
    @required this.ean,
    this.rating = 1,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.description,
  });
}
