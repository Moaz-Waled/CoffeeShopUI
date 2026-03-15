import 'package:coffee_shop/core/constants/image_constatnts.dart';
import 'package:coffee_shop/core/models/category_model.dart';
import 'package:coffee_shop/core/models/product_model.dart';

class HomeDataSource {
  List<CategoryModel> get categories => [
    CategoryModel(id: 0, name: "All Coffee"),
    CategoryModel(id: 1, name: "Machito"),
    CategoryModel(id: 2, name: "Latte"),
    CategoryModel(id: 3, name: "Americano"),
  ];

  List<ProductModel> get products => [
    ProductModel(
      id: 1,
      name: "Caffe Mocha",
      image: MyAppImage.image1,
      description:
          "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More",
      type: "Deep Foam",
      price: 4.53,
      rate: 4.8,
    ),
    ProductModel(
      id: 2,
      name: "Flat White",
      image: MyAppImage.image2,
      description:
          "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More",
      type: "Deep Foam",
      price: 6.66,
      rate: 4.6,
    ),
    ProductModel(
      id: 3,
      name: "Caffe Mocha",
      image: MyAppImage.image3,
      description:
          "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More",
      type: "Deep Foam",
      price: 7.24,
      rate: 4.9,
    ),
    ProductModel(
      id: 4,
      name: "Flat White",
      image: MyAppImage.image4,
      description:
          "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More",
      type: "Deep Foam",
      price: 5.12,
      rate: 4.8,
    ),
    ProductModel(
      id: 5,
      name: "Caffe Mocha",
      image: MyAppImage.image5,
      description:
          "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. Read More",
      type: "Deep Foam",
      price: 9.99,
      rate: 5.0,
    ),
  ];
}
