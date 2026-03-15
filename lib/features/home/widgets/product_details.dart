import 'package:coffee_shop/core/models/details_icons_model.dart';
import 'package:coffee_shop/core/theme/app_theme.dart';
import 'package:coffee_shop/features/home/data/details_data_source.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class ProductDetails extends StatelessWidget {
  final String name;
  final double rate;

  const ProductDetails({super.key, required this.name, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 150,
          height: 105,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: MyTextStyle.normalTitleText(size: 20)),
              const SizedBox(height: 6),
              Text("Ice/Hot", style: MyTextStyle.subTitleText()),
              const SizedBox(height: 24),
              Row(
                children: [
                  Icon(IconlyBold.star, size: 20, color: Color(0xffFBBE21)),
                  const SizedBox(width: 5),
                  Text("$rate", style: MyTextStyle.normalTitleText()),
                  const SizedBox(width: 5),
                  Text("(230)", style: MyTextStyle.subTitleText(size: 12)),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 156,
          height: 44,
          alignment: Alignment.center,
          child: SizedBox(
            height: 44,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: DetailsDataSource.icons.length,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 12);
              },
              itemBuilder: (context, index) {
                final DetailsIconsModel icon = DetailsDataSource.icons[index];
                return InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffededed).withAlpha(300),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 44,
                    height: 44,
                    alignment: Alignment.center,
                    child: Image.asset(icon.icon, width: 20, height: 20),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
