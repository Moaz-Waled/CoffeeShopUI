import 'package:coffee_shop/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class PaymentSummary extends StatelessWidget {
  final double totalPrice;

  const PaymentSummary({super.key, required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Payment Summary", style: MyTextStyle.normalTitleText()),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Price",
                  style: TextStyle(fontSize: 14, color: Color(0xff313131)),
                ),
                const SizedBox(height: 12),
                Text(
                  "Delivery Fee",
                  style: TextStyle(fontSize: 14, color: Color(0xff313131)),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "\$ $totalPrice",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff242424),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Text(
                      "\$ 2.0",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff2a2a2a),
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "\$ 1.0",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff242424),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
