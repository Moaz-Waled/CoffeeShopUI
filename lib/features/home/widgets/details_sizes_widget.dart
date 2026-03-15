import 'package:coffee_shop/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SizesWidget extends StatelessWidget {
  final bool isSelected;
  final String size;

  const SizesWidget({super.key, required this.isSelected, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected
            ? Color(0xffC67C4E).withAlpha(300)
            : Color(0xffffffff),
        border: Border.all(
          width: 1,
          color: isSelected ? MyAppTheme.primaryColor : Color(0xffe3e3e3),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.symmetric(horizontal: 14),
      width: 96,
      height: 40,
      alignment: Alignment.center,
      child: Text(
        size,
        style: TextStyle(
          fontSize: 14,
          color: isSelected ? MyAppTheme.primaryColor : Color(0xff242424),
        ),
      ),
    );
  }
}
