import 'package:coffee_shop/core/constants/image_constatnts.dart';
import 'package:coffee_shop/core/shared/buttons.dart';
import 'package:coffee_shop/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class OrderNavigationBar extends StatelessWidget {
  final double totalPrice;
  final bool expanded;
  final void Function() onIconPressed;
  final void Function() onButtonPressed;

  const OrderNavigationBar({
    super.key,
    required this.totalPrice,
    required this.expanded,
    required this.onIconPressed,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: EdgeInsets.symmetric(horizontal: 24),
      duration: Duration(milliseconds: 0),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(16),
      ),
      height: expanded ? 150 : 75,
      width: double.infinity,
      child: Column(
        children: [
          ListTile(
            leading: Image.asset(MyAppIcon.wallet),
            title: Text(
              "Cash/Wallet",
              style: MyTextStyle.normalTitleText(size: 14),
            ),
            subtitle: Text(
              "\$ ${totalPrice + 1.0}",
              style: MyTextStyle.normalTitleText(
                size: 12,
                color: MyAppTheme.primaryColor,
              ),
            ),
            trailing: IconButton(
              onPressed: onIconPressed,
              icon: Icon(
                expanded ? IconlyLight.arrow_down_2 : IconlyLight.arrow_up_2,
                size: 20,
              ),
            ),
          ),
          if (expanded)
            Container(
              width: double.infinity,
              child: MyGeneralButton(onPressed: onButtonPressed, text: "Order"),
            ),
        ],
      ),
    );
  }
}
