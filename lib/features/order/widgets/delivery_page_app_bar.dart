import 'package:coffee_shop/core/constants/image_constatnts.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class DeliveryPageAppBar extends StatelessWidget {
  const DeliveryPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffe3e3e3),
                borderRadius: BorderRadius.circular(12),
              ),
              width: 44,
              height: 44,
              alignment: Alignment.center,
              child: Icon(IconlyLight.arrow_left_2, size: 24),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffe3e3e3),
                borderRadius: BorderRadius.circular(12),
              ),
              width: 44,
              height: 44,
              alignment: Alignment.center,
              child: Image.asset(MyAppIcon.gps, width: 24, height: 24),
            ),
          ),
        ],
      ),
    );
  }
}
