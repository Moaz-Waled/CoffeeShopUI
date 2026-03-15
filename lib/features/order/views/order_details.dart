import 'package:coffee_shop/core/shared/buttons.dart';
import 'package:coffee_shop/core/theme/app_theme.dart';
import 'package:coffee_shop/features/order/views/delivery_details.dart';
import 'package:coffee_shop/features/order/widgets/address_details.dart';
import 'package:coffee_shop/features/order/widgets/discount_container.dart';
import 'package:coffee_shop/features/order/widgets/order_coffee_image.dart';
import 'package:coffee_shop/features/order/widgets/order_details_app_bar.dart';
import 'package:coffee_shop/features/order/widgets/order_navigation_bar.dart';
import 'package:coffee_shop/features/order/widgets/order_type.dart';
import 'package:coffee_shop/features/order/widgets/payment_summary.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  final String image;
  final String name;
  final double price;

  const OrderDetails({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  List<String> types = ["Deliver", "Pick Up"];
  int selectedIndex = 0;
  int counter = 1;
  double totalPrice = 0.0;
  bool navigationExpanded = true;

  @override
  void initState() {
    super.initState();
    setState(() {
      totalPrice = widget.price;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: OrderNavigationBar(
        totalPrice: totalPrice,
        expanded: navigationExpanded,
        onIconPressed: () {
          setState(() {
            navigationExpanded = !navigationExpanded;
          });
        },
        onButtonPressed: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => DeliveryDetails()));
        },
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            OrderDetailsAppBar(),
            const SizedBox(height: 24),
            Container(
              padding: EdgeInsets.symmetric(vertical: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffededed),
              ),
              width: double.infinity,
              height: 43,
              alignment: Alignment.center,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: types.length,
                itemBuilder: (context, index) {
                  final String type = types[index];
                  final bool isSelected = selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: OrderType(isSelected: isSelected, type: type),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            AddressDetails(),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Divider(thickness: 0.7),
            ),
            const SizedBox(height: 12),
            ListTile(
              leading: OrderCoffeeImage(image: widget.image),
              title: Text(widget.name, style: MyTextStyle.normalTitleText()),
              subtitle: Text("Deep Foam", style: MyTextStyle.subTitleText()),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CounterButton(
                    icon: Icons.remove,
                    onTap: () {
                      if (counter > 1) {
                        setState(() {
                          counter--;
                          totalPrice -= widget.price;
                          totalPrice = double.parse(
                            totalPrice.toStringAsFixed(2),
                          );
                        });
                      }
                    },
                  ),
                  const SizedBox(width: 16),
                  Text(
                    "$counter",
                    style: MyTextStyle.normalTitleText(size: 14),
                  ),
                  const SizedBox(width: 16),
                  CounterButton(
                    icon: Icons.add,
                    onTap: () {
                      setState(() {
                        counter++;
                        totalPrice += widget.price;
                        totalPrice = double.parse(
                          totalPrice.toStringAsFixed(2),
                        );
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Divider(thickness: 4, height: 4, color: Color(0xffF9F2ED)),
            const SizedBox(height: 24),
            DiscountContainer(onPressed: () {}),
            const SizedBox(height: 24),
            PaymentSummary(totalPrice: totalPrice),
          ],
        ),
      ),
    );
  }
}
