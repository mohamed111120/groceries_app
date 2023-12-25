import 'package:flutter/material.dart';

import '../../../../../../models/card_model/product_model.dart';
import '../../../../../../view_model/app_colors.dart';
import '../../../../../../view_model/app_text_style.dart';
import '../../../../../componants/custom_button.dart';

class ProductDetailsSeconedSection extends StatelessWidget {
  const ProductDetailsSeconedSection({Key? key,  required this.product}) : super(key: key);
  final ProductsModel product;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
        flex: 2,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    product.title!,
                    style: AppTextStyle.title,
                  ),
                  Icon(Icons.favorite_border),
                ],
              ),
              Text(
                '${product.quantaty}kg, Priceg',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.remove,
                        color: Colors.grey,
                        size: 30,
                      ),
                      FloatingActionButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                                color: Colors.grey.withOpacity(.5))),
                        mini: true,
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        onPressed: () {},
                        child: Text('1'),
                      ),
                      Icon(
                        Icons.add,
                        color: AppColors.green,
                        size: 30,
                      ),
                    ],
                  ),
                  Text(
                    '\$5.00',
                    style: AppTextStyle.title,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey.withOpacity(.3),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Product Detail',
                    style: TextStyle(color: AppColors.black),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 35,
                  ),
                ],
              ),
              Text(
                style: TextStyle(color: Colors.grey,fontSize: 10),
                'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey.withOpacity(.3),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nutritions',
                    style: TextStyle(color: AppColors.black),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.2),
                            borderRadius: BorderRadius.circular(10)
                        ),

                        child: Text('100gr',style: TextStyle(color: Colors.grey,fontSize: 12),),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 35,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey.withOpacity(.3),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Review',
                    style: TextStyle(color: AppColors.black),
                  ),
                  Row(
                    children: [

                      Icon(
                        Icons.star,
                        size: 25,
                        color: Color(0xffF3603F),
                      ),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Color(0xffF3603F),
                      ),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Color(0xffF3603F),
                      ),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Color(0xffF3603F),
                      ),
                      Icon(
                        Icons.star,
                        size: 25,
                        color: Color(0xffF3603F),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 35,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: AlignmentDirectional.center,
                  child: CustomButton(title: 'Add To Basket',onPressed:() {} ,))



            ],
          ),
        ));
  }
}
