import 'package:flutter/material.dart';
import 'package:groceries_app/view_model/app_images.dart';
class ProductsModel {
  final String? image;
  final String? title;
  final num? quantaty;

  ProductsModel({required this.image,required this.title,required this.quantaty});
}

List<ProductsModel> products=[
  ProductsModel(image: AppImages.food0, title: 'food0', quantaty: 0),
  ProductsModel(image: AppImages.food1, title: 'food1', quantaty: 1),
  ProductsModel(image: AppImages.food2, title: 'food2', quantaty: 2),
  ProductsModel(image: AppImages.food3, title: 'food3', quantaty: 3),
  ProductsModel(image: AppImages.food4, title: 'food4', quantaty: 4),
  ProductsModel(image: AppImages.food5, title: 'food5', quantaty: 5),

];