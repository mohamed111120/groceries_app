import 'package:flutter/material.dart';
import 'package:groceries_app/models/card_model/product_model.dart';
import 'package:groceries_app/view_model/utils/app_colors.dart';
import 'package:groceries_app/view_model/utils/app_text_style.dart';
import '../home/home_screen/product_details/product_details.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.productModel,
  }) : super(key: key);

  final ProductsModel productModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: 200,
      height: 250,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.gray),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              productModel.image ?? '',
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productModel.title ?? '',
                  style: AppTextStyle.title,
                ),
                Text(
                  '${productModel.quantaty}kg, Priceg',
                  style: AppTextStyle.subTitle,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '\$ 5.00',
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      mini: true,
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          ProiductDetails.id,
                          arguments: productModel,
                        );
                      },
                      backgroundColor: AppColors.green,
                      child: Text('+',
                          style: TextStyle(
                            color: AppColors.white,
                          )),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
