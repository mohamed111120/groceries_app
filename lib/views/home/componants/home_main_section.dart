import 'package:flutter/material.dart';
import 'package:groceries_app/view_model/app_colors.dart';
import 'package:groceries_app/view_model/app_text_style.dart';

import '../../../models/card_model/product_model.dart';
import '../../componants/custom_card.dart';

class HomeMainSection extends StatelessWidget {
  const HomeMainSection({Key? key, required this.SectionName, this.child, }) : super(key: key);
  final String SectionName;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Expanded(child: Text(SectionName,style: AppTextStyle.title,)),
              Text('see all',style: TextStyle(color: AppColors.green,fontSize: 12),)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: child ?? SizedBox(),
        ),
        SizedBox(
          height: 260,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) =>
                CustomCard(productModel: products[index],),
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              width: 12,
            ),
            itemCount: products.length,
          ),
        ),
      ],
    );
  }
}
