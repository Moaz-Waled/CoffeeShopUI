import 'package:coffee_shop/core/shared/buttons.dart';
import 'package:coffee_shop/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DetailsNavigationBar extends StatelessWidget {
  final double price;
  final void Function() onPressed;

  const DetailsNavigationBar({
    super.key,
    required this.price,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      padding: const EdgeInsets.all(24),
      height: 118,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Price",
                style: TextStyle(color: Color(0xff909090), fontSize: 14),
              ),
              const SizedBox(height: 6),
              Text(
                "\$ $price",
                style: TextStyle(
                  color: MyAppTheme.primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 217,
              child: MyGeneralButton(text: "Buy Now", onPressed: onPressed),
            ),
          ),
        ],
      ),
    );
  }
}
