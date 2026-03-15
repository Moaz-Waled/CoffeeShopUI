import 'package:flutter/material.dart';

class DetailsImage extends StatelessWidget {
  final String image;

  const DetailsImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      width: double.infinity,
      height: 202,
    );
  }
}
