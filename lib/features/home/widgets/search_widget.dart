import 'package:coffee_shop/core/shared/buttons.dart';
import 'package:coffee_shop/core/shared/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class MySearchWidget extends StatelessWidget {
  final TextEditingController controller;
  const MySearchWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: MySearchTextField(controller: controller)),
        const SizedBox(width: 16),
        MyIconButton(icon: IconlyLight.filter, onTap: () {}),
      ],
    );
  }
}
