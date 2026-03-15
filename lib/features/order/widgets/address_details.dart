import 'package:coffee_shop/core/shared/buttons.dart';
import 'package:coffee_shop/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class AddressDetails extends StatelessWidget {
  const AddressDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Delivery Address", style: MyTextStyle.normalTitleText()),
        const SizedBox(height: 24),
        Text(
          "Jl. Kpg Sutoyo",
          style: TextStyle(
            fontSize: 14,
            color: Color(0xff313131),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          "Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.",
          style: MyTextStyle.subTitleText(),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            OrderButtons(
              onPressed: () {},
              width: 140,
              text: "Edit Address",
              icon: IconlyLight.edit_square,
            ),
            const SizedBox(width: 10),
            OrderButtons(
              onPressed: () {},
              width: 120,
              text: "Add Note",
              icon: IconlyLight.paper,
            ),
          ],
        ),
      ],
    );
  }
}
