import 'package:flutter/material.dart';
import 'package:groceries_app/models/card_model/product_model.dart';
import 'package:groceries_app/view_model/app_colors.dart';
import 'package:groceries_app/views/home/home_screen/product_details/sections/product_details_frist_section.dart';
import 'package:groceries_app/views/home/home_screen/product_details/sections/product_details_seconed_section.dart';

class ProiductDetails extends StatelessWidget {
  const ProiductDetails({
    Key? key,
  }) : super(key: key);
  static String id = 'ProiductDetails';

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as ProductsModel;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.withOpacity(.3),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 10),
            child: Icon(
              Icons.outbox,
              color: AppColors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          ProductDetailsFristSection(productsModel: product),
          ProductDetailsSeconedSection(product: product)

        ],
      ),
    );
  }
}

