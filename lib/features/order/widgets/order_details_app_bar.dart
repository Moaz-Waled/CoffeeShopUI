import 'package:coffee_shop/core/shared/buttons.dart';
import 'package:coffee_shop/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class OrderDetailsAppBar extends StatelessWidget {
  const OrderDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          PopIcon(),
          const SizedBox(width: 110),
          Text("Order", style: MyTextStyle.normalTitleText()),
        ],
      ),
    );
  }
}