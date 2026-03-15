import 'package:coffee_shop/core/constants/image_constatnts.dart';
import 'package:coffee_shop/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class DiscountContainer extends StatelessWidget {
  final void Function() onPressed;

  const DiscountContainer({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(width: 1, color: Color(0xffededed)),
      ),
      width: double.infinity,
      height: 56,
      alignment: Alignment.center,
      child: ListTile(
        leading: Image.asset(
          MyAppIcon.discount,
          color: MyAppTheme.primaryColor,
          width: 20,
          height: 20,
        ),
        title: Text(
          "1 Discount is Applies",
          style: MyTextStyle.normalTitleText(size: 14),
        ),
        trailing: IconButton(
          onPressed: onPressed,
          icon: Icon(IconlyLight.arrow_right_2, size: 20),
        ),
      ),
    );
  }
}
