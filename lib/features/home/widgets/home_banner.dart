import 'package:coffee_shop/core/constants/image_constatnts.dart';
import 'package:flutter/material.dart';

class MyHomeBanner extends StatelessWidget {
  const MyHomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(MyAppImage.banner),
          fit: BoxFit.cover,
        ),
      ),
      height: 140,
      width: double.infinity,
    );
  }
}
