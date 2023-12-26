import 'package:flutter/material.dart';
import 'package:groceries_app/view_model/utils/app_images.dart';
class ProductsModel {
  final String? image;
  final String? title;
  final num? quantaty;

  ProductsModel({required this.image,required this.title,required this.quantaty});
}

List<ProductsModel> products=[
  ProductsModel(image: AppImages.food0, title: 'banana', quantaty: 0),
  ProductsModel(image: AppImages.food1, title: 'apple', quantaty: 1),
  ProductsModel(image: AppImages.food2, title: 'pepper', quantaty: 2),
  ProductsModel(image: AppImages.food3, title: 'vegetables', quantaty: 3),
  ProductsModel(image: AppImages.food4, title: 'Meat', quantaty: 4),
  ProductsModel(image: AppImages.food5, title: 'chicken', quantaty: 5),

];