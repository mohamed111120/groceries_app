import 'package:flutter/material.dart';
import 'package:groceries_app/view_model/utils/app_images.dart';

class ExportCardModel {
  final String image;
  final Color Colors;
  final String name;

  ExportCardModel(
      {required this.image, required this.Colors, required this.name});
}

List<ExportCardModel> exportCards = [
  ExportCardModel(
    image: AppImages.export1,
    Colors: Color(0xff53B175),
    name: 'Frash Fruits',
  ),
  ExportCardModel(
    image: AppImages.export2,
    Colors: Color(0xffF8A44C),
    name: 'Cooking Oil',
  ),
  ExportCardModel(
    image: AppImages.export3,
    Colors: Color(0xffF7A593),
    name: 'Meat & Fish',
  ),
  ExportCardModel(
    image: AppImages.export4,
    Colors: Color(0xffD3B0E0),
    name: 'Bakery & Snacks',
  ),
  ExportCardModel(
    image: AppImages.export5,
    Colors: Color(0xffFDE598),
    name: 'Dairy & Eggs',
  ),
  ExportCardModel(
    image: AppImages.export6,
    Colors: Color(0xffB7DFF5),
    name: 'Beverages',
  ),
  ExportCardModel(
    image: AppImages.export1,
    Colors: Color(0xff53B175),
    name: 'Frash Fruits',
  ),
  ExportCardModel(
    image: AppImages.export4,
    Colors: Color(0xffD3B0E0),
    name: 'Bakery & Snacks',
  ),

];
