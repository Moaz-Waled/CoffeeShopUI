import 'package:flutter/material.dart';

class OrderCoffeeImage extends StatelessWidget {
  final String image;

  const OrderCoffeeImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      width: 54,
      height: 54,
    );
  }
}
