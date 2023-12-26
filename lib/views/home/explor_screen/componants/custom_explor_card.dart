import 'package:flutter/material.dart';
import 'package:groceries_app/views/home/explor_screen/model/export_card_model.dart';

import '../../../../view_model/utils/app_colors.dart';
import '../../../../view_model/utils/app_images.dart';

class CustomExplorScreenCard extends StatelessWidget {
  const CustomExplorScreenCard({Key? key, required this.exportCardModel}) : super(key: key);
  final ExportCardModel exportCardModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 180,
      height: 180,
      decoration: BoxDecoration(
        color: exportCardModel.Colors.withOpacity(.3),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: exportCardModel.Colors),
      ),
      child: Column(
        children: [
          Expanded(
            // flex: 2,
              child: Image.asset(
                exportCardModel.image,
                fit: BoxFit.contain,
              )),
          Expanded(
              child: Text(
                exportCardModel.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColors.black, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
