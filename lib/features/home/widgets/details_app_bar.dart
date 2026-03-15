import 'package:coffee_shop/core/shared/buttons.dart';
import 'package:coffee_shop/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PopIcon(),
          Text("Detail", style: MyTextStyle.normalTitleText()),
          IconButton(onPressed: () {}, icon: Icon(IconlyLight.heart)),
        ],
      ),
    );
  }
}
