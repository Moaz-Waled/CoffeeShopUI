import 'package:coffee_shop/core/theme/app_theme.dart';
import 'package:coffee_shop/features/home/widgets/details_app_bar.dart';
import 'package:coffee_shop/features/home/widgets/details_image.dart';
import 'package:coffee_shop/features/home/widgets/details_navigation_bar.dart';
import 'package:coffee_shop/features/home/widgets/details_sizes_widget.dart';
import 'package:coffee_shop/features/home/widgets/product_details.dart';
import 'package:coffee_shop/features/order/views/order_details.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String image;
  final String name;
  final String description;
  final double price;
  final double rate;

  const DetailsPage({
    super.key,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.rate,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  List<String> sizes = ["S", "M", "L"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: DetailsNavigationBar(
        price: widget.price,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => OrderDetails(
                image: widget.image,
                name: widget.name,
                price: widget.price,
              ),
            ),
          );
        },
      ),
      body: Container(
        padding: EdgeInsets.all(24),
        child: ListView(
          children: [
            const SizedBox(height: 20),
            DetailsAppBar(),
            const SizedBox(height: 24),
            DetailsImage(image: widget.image),
            const SizedBox(height: 24),
            ProductDetails(name: widget.name, rate: widget.rate),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Divider(thickness: 0.5),
            ),
            const SizedBox(height: 12),
            Text("Description", style: MyTextStyle.normalTitleText()),
            const SizedBox(height: 12),
            Text(widget.description, style: MyTextStyle.subTitleText(size: 14)),
            const SizedBox(height: 24),
            Text("Size", style: MyTextStyle.normalTitleText()),
            const SizedBox(height: 12),
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: sizes.length,
                itemBuilder: (context, index) {
                  final String size = sizes[index];
                  final bool isSelected = selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: SizesWidget(isSelected: isSelected, size: size),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
