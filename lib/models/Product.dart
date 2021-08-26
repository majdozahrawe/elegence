import 'package:flutter/material.dart';

class Product {
  final int id;
  final String Name;
  final List<String> images;
  final double price;
  final bool  isPopular;

  static final columns = ["id", "Name", "price", "images"];

  Product( {
    required this.id,
    required this.images,
    this.isPopular = false,
    required this.Name,
    required this.price,
  });



}

var products = <Product> [
  Product(
    id: 1,
    images: [
      "https://elegance-luxury.herokuapp.com/images/rings/ring--1625568765187-1.png",
      "https://elegance-luxury.herokuapp.com/images/rings/ring--1625568765187-1.png",
    ],
    Name: "Ring1™",
    price: 0.30,
  ),
  Product(
    id: 2,
    images: [
      "https://elegance-luxury.herokuapp.com/images/watchs/Watch--1625570342812-1.png",
      "https://elegance-luxury.herokuapp.com/images/watchs/Watch--1625570342812-1.png",
    ],
    Name: "Perfume1",
    price: 2.5,
  ),
  Product(
    id: 3,
    images: [
      "https://elegance-luxury.herokuapp.com/images/perfumes/perfume--1625572110474-1.png",
    ],
    Name: "Watch1",
    price: 1.0,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/ic_folomaster.png",
    ],
    Name: "Perfume2",
    price: 1.0,
  ),
];

