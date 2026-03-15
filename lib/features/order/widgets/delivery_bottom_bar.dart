import 'package:coffee_shop/core/constants/image_constatnts.dart';
import 'package:coffee_shop/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DeliveryBottomBar extends StatelessWidget {
  final double height;
  final List<bool> timeBar = [true, true, true, false];
  final bool bottomDragged;

  DeliveryBottomBar({
    super.key,
    required this.height,
    required this.bottomDragged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(24),
          topLeft: Radius.circular(24),
        ),
      ),
      padding: EdgeInsets.all(16),
      width: double.infinity,
      height: height,
      alignment: Alignment.center,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: bottomDragged
                  ? MyAppTheme.primaryColor
                  : Color(0xffe3e3e3),
              borderRadius: BorderRadius.circular(16),
            ),
            width: 45,
            height: 5,
          ),
          const SizedBox(height: 24),
          if (height >= 100)
            Text("10 minutes left", style: MyTextStyle.normalTitleText()),
          if (height >= 150) const SizedBox(height: 6),
          if (height >= 150)
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Delivery to ",
                    style: MyTextStyle.subTitleText(),
                  ),
                  TextSpan(
                    text: "Jl. Kpg Sutoyo",
                    style: MyTextStyle.normalTitleText(size: 12),
                  ),
                ],
              ),
            ),
          if (height >= 200) const SizedBox(height: 24),
          if (height >= 200)
            SizedBox(
              height: 4,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: timeBar.length,
                itemBuilder: (context, index) {
                  final bool green = timeBar[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: green ? Color(0xff36C07E) : Color(0xffE3E3E3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 71.25,
                    height: 4,
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 10);
                },
              ),
            ),
          if (height >= 300) const SizedBox(height: 24),
          if (height >= 300)
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Color(0xffe3e3e3)),
                borderRadius: BorderRadius.circular(12),
              ),
              width: double.infinity,
              height: 77,
              alignment: Alignment.center,
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: Color(0xffe3e3e3)),
                  ),
                  width: 56,
                  height: 56,
                  child: Container(
                    width: 27.5,
                    height: 27.5,
                    alignment: Alignment.center,
                    child: Image.asset(
                      MyAppIcon.maskGroup,
                      height: 27.5,
                      width: 27.5,
                    ),
                  ),
                ),
                title: Text(
                  "Delivered your order",
                  style: MyTextStyle.normalTitleText(size: 14),
                ),
                subtitle: Text(
                  "We will deliver your goods to you in the shortes possible time.",
                  style: MyTextStyle.subTitleText(),
                ),
              ),
            ),
          if (height == 360) const SizedBox(height: 24),
          if (height == 360)
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: DecorationImage(
                    image: AssetImage(MyAppImage.delivery),
                    fit: BoxFit.cover,
                  ),
                ),
                width: 56,
                height: 56,
              ),
              title: Text(
                "Brooklyn Simmons",
                style: MyTextStyle.normalTitleText(size: 14),
              ),
              subtitle: Text(
                "Personal Courier",
                style: MyTextStyle.subTitleText(),
              ),
              trailing: InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: Color(0xffe3e3e3)),
                  ),
                  width: 44,
                  height: 44,
                  alignment: Alignment.center,
                  child: Image.asset(MyAppIcon.phone),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
