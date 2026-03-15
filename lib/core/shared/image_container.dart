import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class MyImageContainer extends StatelessWidget {
  final String image;
  final double rate;

  const MyImageContainer({super.key, required this.image, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
          width: double.infinity,
          height: 128,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(24),
              ),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.transparent,
                  Color(0xff111111),
                  Colors.transparent,
                  Color(0xff313131),
                ],
              ),
            ),
            width: 51,
            height: 28,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(IconlyBold.star, color: Color(0xffFBBE21), size: 15),
                Text(
                  "$rate",
                  style: TextStyle(
                    fontSize: 8,
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
