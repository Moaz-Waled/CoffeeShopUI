import 'package:coffee_shop/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class MySearchTextField extends StatelessWidget {
  final TextEditingController controller;
  const MySearchTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(IconlyLight.search, color: Colors.white),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        fillColor: Color(0xff2a2a2a),
        hintText: "Search coffee",
        hintStyle: MyTextStyle.subTitleText(size: 14),
      ),
      style: TextStyle(color: Colors.white),
    );
  }
}
