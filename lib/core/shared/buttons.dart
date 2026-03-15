import 'package:coffee_shop/core/models/category_model.dart';
import 'package:coffee_shop/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class MyGeneralButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const MyGeneralButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16),
      ),
      color: MyAppTheme.primaryColor,
      height: 56,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class MyIconButton extends StatelessWidget {
  final IconData icon;
  final void Function() onTap;

  const MyIconButton({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: MyAppTheme.primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        width: 52,
        height: 52,
        child: Icon(icon, color: Colors.white, size: 20),
      ),
    );
  }
}

class MyCategoryButton extends StatelessWidget {
  final CategoryModel category;
  final bool isSelected;
  final void Function() onTap;

  const MyCategoryButton({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: isSelected
              ? MyAppTheme.primaryColor
              : Color(0xffededed).withAlpha(300),
          borderRadius: BorderRadius.circular(6),
        ),
        height: 35,
        alignment: Alignment.center,
        child: Text(
          category.name,
          style: isSelected
              ? MyTextStyle.normalTitleText(color: Colors.white)
              : MyTextStyle.normalTitleText(size: 14, color: Color(0xff313131)),
        ),
      ),
    );
  }
}

class PopIcon extends StatelessWidget {
  const PopIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: Icon(IconlyLight.arrow_left_2, size: 24),
    );
  }
}

class OrderButtons extends StatelessWidget {
  final void Function() onPressed;
  final double width;
  final String text;
  final IconData icon;

  const OrderButtons({
    super.key,
    required this.width,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 26,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16),
          side: BorderSide(width: 1.5, color: Color(0xffa2a2a2)),
        ),
        height: 26,
        color: Color(0xffffffff),
        elevation: 0,
        onPressed: onPressed,
        child: Row(
          children: [
            Icon(icon, size: 15, color: Color(0xff313131)),
            const SizedBox(width: 5),
            Text(
              text,
              style: MyTextStyle.subTitleText(color: Color(0xff313131)),
            ),
          ],
        ),
      ),
    );
  }
}

class CounterButton extends StatelessWidget {
  final IconData icon;
  final void Function() onTap;

  const CounterButton({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(20),
        ),
        width: 24,
        height: 24,
        alignment: Alignment.center,
        child: Icon(icon, size: 16),
      ),
    );
  }
}
