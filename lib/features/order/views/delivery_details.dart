import 'package:coffee_shop/core/constants/image_constatnts.dart';
import 'package:coffee_shop/features/order/widgets/delivery_bottom_bar.dart';
import 'package:coffee_shop/features/order/widgets/delivery_page_app_bar.dart';
import 'package:flutter/material.dart';

class DeliveryDetails extends StatefulWidget {
  const DeliveryDetails({super.key});

  @override
  State<DeliveryDetails> createState() => _DeliveryDetailsState();
}

class _DeliveryDetailsState extends State<DeliveryDetails> {
  double minHeight = 80;
  double maxHeight = 360;
  double height = 360;
  bool bottomDragged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            child: Image.asset(MyAppImage.map, fit: BoxFit.cover),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [const SizedBox(height: 48), DeliveryPageAppBar()],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: GestureDetector(
              onVerticalDragUpdate: (d) {
                setState(() {
                  bottomDragged = true;
                  height -= d.delta.dy;
                  height = height.clamp(minHeight, maxHeight);
                });
              },
              onVerticalDragEnd: (_) {
                setState(() {
                  height = height > (minHeight + maxHeight) / 2
                      ? maxHeight
                      : minHeight;
                  bottomDragged = false;
                });
              },
              child: DeliveryBottomBar(
                height: height,
                bottomDragged: bottomDragged,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
