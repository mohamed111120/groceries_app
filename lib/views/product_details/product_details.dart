import 'package:flutter/material.dart';
import 'package:groceries_app/models/card_model/product_model.dart';
import 'package:groceries_app/view_model/app_colors.dart';
import 'package:groceries_app/view_model/app_text_style.dart';
import 'package:groceries_app/views/componants/custom_button.dart';

class ProiductDetails extends StatelessWidget {
  const ProiductDetails({
    Key? key,
  }) : super(key: key);
  static String id = 'ProiductDetails';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ProductsModel;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.gray,
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
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.gray,
                  borderRadius: BorderRadiusDirectional.only(
                      bottomStart: Radius.circular(30),
                      bottomEnd: Radius.circular(30))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    args.image!,
                    width: 300,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          args.title!,
                          style: AppTextStyle.title,
                        ),
                        Icon(Icons.favorite_border),
                      ],
                    ),
                    Text(
                      '${args.quantaty}kg, Priceg',
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
                    Align(
                        alignment: AlignmentDirectional.center,
                        child: CustomButton(title: 'Add To Basket',onPressed:() {} ,))



                  ],
                ),
              ))
        ],
      ),
    );
  }
}
