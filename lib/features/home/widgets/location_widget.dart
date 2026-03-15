import 'package:coffee_shop/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class Locationwidget extends StatelessWidget {
  const Locationwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Location", style: MyTextStyle.subTitleText()),
        Row(
          children: [
            Text(
              "Bilzen, Tanjungbalai",
              style: MyTextStyle.smallTitleText(size: 14, color: Colors.white),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                IconlyLight.arrow_down_2,
                color: Color(0xffd8d8d8),
                size: 17,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
