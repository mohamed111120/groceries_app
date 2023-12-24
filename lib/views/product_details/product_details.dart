
import 'package:flutter/material.dart';
import 'package:groceries_app/models/card_model/product_model.dart';

class ProiductDetails extends StatelessWidget {
  const ProiductDetails ({Key? key,}) : super(key: key);
static String id = 'ProiductDetails';
  @override


  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ProductsModel;

    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: Image.asset(args.image!).image)
        ),


      ),

    );
  }
}
