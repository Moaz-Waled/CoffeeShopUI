import 'package:coffee_shop/core/models/category_model.dart';
import 'package:coffee_shop/core/models/product_model.dart';
import 'package:coffee_shop/core/shared/buttons.dart';
import 'package:coffee_shop/core/shared/custom_animation.dart';
import 'package:coffee_shop/features/home/data/home_data_source.dart';
import 'package:coffee_shop/features/home/views/details_page.dart';
import 'package:coffee_shop/features/home/widgets/home_background.dart';
import 'package:coffee_shop/features/home/widgets/home_banner.dart';
import 'package:coffee_shop/features/home/widgets/home_navigation_bar.dart';
import 'package:coffee_shop/features/home/widgets/location_widget.dart';
import 'package:coffee_shop/features/home/widgets/products_widget.dart';
import 'package:coffee_shop/features/home/widgets/search_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeDataSource homeDataSource = HomeDataSource();
  int selectedCategory = 0;
  int i = 0;

  TextEditingController search = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    search.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HomeNavigationBar(
        currentIndex: i,
        onTap: (value) {
          setState(() {
            i = value;
          });
        },
      ),
      body: Stack(
        children: [
          HomeBackGround(),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  const SizedBox(height: 68),
                  TopToDown(milliseconds: 3500, child: Locationwidget()),
                  const SizedBox(height: 24),
                  TopToDown(
                    milliseconds: 3500,
                    child: MySearchWidget(controller: search),
                  ),
                  const SizedBox(height: 24),
                  DownToTop(milliseconds: 4500, child: MyHomeBanner()),
                  const SizedBox(height: 24),
                  SizedBox(
                    height: 35,
                    child: TopToDown(
                      milliseconds: 3500,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 16);
                        },
                        itemCount: homeDataSource.categories.length,
                        itemBuilder: (context, index) {
                          final CategoryModel category =
                              homeDataSource.categories[index];
                          return MyCategoryButton(
                            category: category,
                            isSelected: category.id == selectedCategory,
                            onTap: () {
                              setState(() {
                                selectedCategory = category.id;
                              });
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: DownToTop(
                      milliseconds: 3500,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1 / 1.6,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 15,
                        ),
                        itemCount: homeDataSource.products.length,
                        itemBuilder: (context, index) {
                          final ProductModel product =
                              homeDataSource.products[index];
                          return MyProductsWidget(
                            product: product,
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => DetailsPage(
                                    image: product.image,
                                    name: product.name,
                                    description: product.description,
                                    price: product.price,
                                    rate: product.rate,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
