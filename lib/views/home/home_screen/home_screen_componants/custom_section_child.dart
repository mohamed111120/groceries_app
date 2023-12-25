import 'package:flutter/material.dart';
import 'package:groceries_app/views/home/models/groceries_list_model.dart';

import '../../../../view_model/app_images.dart';

class CustomSectionChild extends StatelessWidget {
  const CustomSectionChild({Key? key, required this.groceriesListModel}) : super(key: key);
  final GroceriesListModel groceriesListModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 200,
      decoration: BoxDecoration(
          color: groceriesListModel.color.withOpacity(.6),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Row(

        children: [
          Image.asset(groceriesListModel.image,fit: BoxFit.contain,),
          Text(groceriesListModel.title,style: TextStyle(fontSize: 10),)
        ],
      ),
    );
  }
}
