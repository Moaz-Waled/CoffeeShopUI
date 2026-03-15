import 'package:coffee_shop/core/constants/image_constatnts.dart';
import 'package:coffee_shop/core/models/product_model.dart';
import 'package:coffee_shop/core/shared/image_container.dart';
import 'package:coffee_shop/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class MyProductsWidget extends StatelessWidget {
  final ProductModel product;
  final void Function() onTap;

  const MyProductsWidget({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(16),
        ),
        height: 238,
        width: 156,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyImageContainer(image: product.image, rate: product.rate),
            const SizedBox(height: 16),
            Text(product.name, style: MyTextStyle.normalTitleText()),
            const SizedBox(height: 8),
            Text(product.type, style: MyTextStyle.subTitleText()),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$ ${product.price}",
                  style: MyTextStyle.normalTitleText(
                    size: 18,
                    color: Color(0xff050505),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(MyAppIcon.plus, height: 32, width: 32),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
