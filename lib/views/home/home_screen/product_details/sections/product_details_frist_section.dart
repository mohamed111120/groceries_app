import 'package:flutter/material.dart';

import '../../../../../../models/card_model/product_model.dart';


class ProductDetailsFristSection extends StatelessWidget {
  const ProductDetailsFristSection({Key? key, required this.productsModel}) : super(key: key);
    final  ProductsModel productsModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.3),
            borderRadius: BorderRadiusDirectional.only(
                bottomStart: Radius.circular(30),
                bottomEnd: Radius.circular(30))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              productsModel.image!,
              width: 250,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}