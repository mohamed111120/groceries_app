import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../view_model/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(

        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.gray)
          ),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.gray)
          ),
          border:  UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.gray)
          ),

        ),
      ),
    );
  }
}
