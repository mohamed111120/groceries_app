import 'dart:ui';

import 'package:groceries_app/view_model/utils/app_images.dart';

class GroceriesListModel {
  final String image;
  final String title;
  final Color color;
  GroceriesListModel( {required this.image, required this.title,required this.color,});
}

List<GroceriesListModel> GroceriesList = [
  GroceriesListModel(image: AppImages.food6, title: 'food6',color: Color(0xffF8A44C)),
  GroceriesListModel(image: AppImages.food6, title: 'food7',color: Color(0xff53B175)),
];
