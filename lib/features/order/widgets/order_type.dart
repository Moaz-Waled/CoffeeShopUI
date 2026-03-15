import 'package:coffee_shop/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class OrderType extends StatelessWidget {
  final bool isSelected;
  final String type;

  const OrderType({super.key, required this.isSelected, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Color(0xffC67C4E) : Color(0xffededed),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 35,
      width: 177,
      alignment: Alignment.center,
      child: Text(
        type,
        style: isSelected
            ? MyTextStyle.normalTitleText(color: Color(0xffffffff))
            : TextStyle(fontSize: 16, color: Color(0xff242424)),
      ),
    );
  }
}
