import 'package:flutter/material.dart';

class data {
  late final String image;
  late final String name;
  late final String price;

  data({
    required this.image,
    required this.name,
    required this.price,
  });
}

List<data> getdata = [
  data(
      image: 'assets/iPhone 14 Pro.png',
      name: 'Iphone 14 Pro max',
      price: '\$1100'),
  data(
    image: 'assets/beats.png',
    name: 'beats solo3',
    price: '\$150',
  ),
  data(
    image: 'assets/airpodsmax.png',
    name: 'airpods max',
    price: '\$99.9',
  ),
  data(
      image: 'assets/iPhone-14-Pro.png',
      name: 'iPhone 14 Pro',
      price: '\$1000'),
  data(
      image: 'assets/JBL-Charge-5-Portable-Bluetooth.png',
      name: 'JBL-Charge-5',
      price: '\$100'),
  data(
      image: 'assets/kieslect_L11_Gold.png',
      name: 'kieslect_L11_Gold',
      price: '\$250'),
];
