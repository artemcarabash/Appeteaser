import 'package:flutter/material.dart';
import 'package:appeteaser_app/models/Producer.dart';

class ScannedProduct {
  final int id;
  final String productName, description;
  final String producerName;
  final String image;
  final int rating;
  final bool isFavourite, isPopular;
  final List<Producer> producersList;

  ScannedProduct({
    @required this.id,
    @required this.image,
    @required this.producersList,
    this.rating = 1,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.productName,
    @required this.producerName,
    @required this.description,
  });
}

// Our demo Products

List<ScannedProduct> demoProducts = [
  ScannedProduct(
      id: 1,
      image: "assets/images/Milch.jpg",
      productName: "Frischmilch",
      producerName: "Enfernung 8,6 km",
      description: description,
      rating: 1,
      isFavourite: true,
      isPopular: true,
      producersList: [
        Producer(
            description: "Erzeuger 1",
            ean: "Molkerei Gut",
            id: 1,
            rating: 1,
            isFavourite: false,
            isPopular: false,
            title: "Erzeuger 1"),
        Producer(
            description: "Erzeuger 2",
            ean: "Molkerei",
            id: 1,
            rating: 2,
            isFavourite: false,
            isPopular: false,
            title: "Erzeuger 2"),
        Producer(
            description: "Erzeuger 3",
            ean: "Molkerei",
            id: 1,
            rating: 3,
            isFavourite: false,
            isPopular: false,
            title: "Erzeuger 3")
      ]),
  ScannedProduct(
      id: 2,
      image: "assets/images/Karotten.jpg",
      productName: "Karotten 'bunt'",
      producerName: "Enfernung 2,2 km",
      description: description,
      rating: 2,
      isPopular: true,
      producersList: [
        Producer(
            description: "Erzeuger 4",
            ean: "010101010101",
            id: 2,
            rating: 2,
            isFavourite: false,
            isPopular: false,
            title: "Erzeuger 4"),
        Producer(
            description: "Erzeuger 5",
            ean: "010101010101",
            id: 1,
            rating: 1,
            isFavourite: false,
            isPopular: false,
            title: "Erzeuger 5"),
        Producer(
            description: "Erzeuger 6",
            ean: "010101010101",
            id: 2,
            rating: 2,
            isFavourite: false,
            isPopular: false,
            title: "Erzeuger 7")
      ]),
  ScannedProduct(
      id: 2,
      image: "assets/images/tomaten.jpg",
      productName: "Tomaten frisch",
      producerName: "Enfernung 2,2 km",
      description: description,
      rating: 2,
      isPopular: true,
      producersList: [
        Producer(
            description: "Erzeuger 2",
            ean: "010101010101",
            id: 2,
            rating: 2,
            isFavourite: false,
            isPopular: false,
            title: "Erzeuger 1"),
        Producer(
            description: "Erzeuger 2",
            ean: "010101010101",
            id: 1,
            rating: 1,
            isFavourite: false,
            isPopular: false,
            title: "Erzeuger 2"),
        Producer(
            description: "Erzeuger 2",
            ean: "010101010101",
            id: 2,
            rating: 2,
            isFavourite: false,
            isPopular: false,
            title: "Erzeuger 3")
      ]),
  ScannedProduct(
      id: 3,
      image: "assets/images/Eier.jpg",
      productName: "Täglich frische Eier",
      producerName: "Entfernung 11,3 km",
      description: description,
      rating: 3,
      isFavourite: true,
      isPopular: true,
      producersList: [
        Producer(
            description: "Erzeuger 1",
            ean: "010101010101",
            id: 1,
            rating: 1,
            isFavourite: false,
            isPopular: false,
            title: "Erzeuger 1"),
        Producer(
            description: "Erzeuger 1",
            ean: "010101010101",
            id: 1,
            rating: 3,
            isFavourite: false,
            isPopular: false,
            title: "Erzeuger 2"),
        Producer(
            description: "Erzeuger 1",
            ean: "010101010101",
            id: 1,
            rating: 1,
            isFavourite: false,
            isPopular: false,
            title: "Erzeuger 3")
      ]),
  ScannedProduct(
      id: 4,
      image: "assets/images/kartoffel.jpg",
      productName: "Kartoffel 'Bertie' fest",
      producerName: "Entfernung 3,3 km",
      description: description,
      rating: 2,
      isFavourite: true,
      producersList: [
        Producer(
            description: "Erzeuger 1",
            ean: "010101010101",
            id: 1,
            rating: 1,
            isFavourite: false,
            isPopular: false,
            title: "Erzeuger 1"),
        Producer(
            description: "Erzeuger 1",
            ean: "010101010101",
            id: 1,
            rating: 1,
            isFavourite: false,
            isPopular: false,
            title: "Erzeuger 2"),
        Producer(
            description: "Erzeuger 1",
            ean: "010101010101",
            id: 1,
            rating: 1,
            isFavourite: false,
            isPopular: false,
            title: "Erzeuger 3")
      ]),
];

const String description =
    "Biomilch von zertifizierten Bioland Betrieben. Bezeichnung: Bioland Fettgehalt: 1,5 % Verpackung: Packung Unterverpackung: 12 x 1 l H-Milch, Bioland, 1,5 %, Packung, 12 x 1 l …";
