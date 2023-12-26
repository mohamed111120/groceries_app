import 'package:flutter/material.dart';

import '../../view_model/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.title, this.onPressed}) : super(key: key);
  final String title;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 70,
      child: ElevatedButton(
        onPressed:onPressed,
        child: Text(
          title,
          style: TextStyle(color: AppColors.white),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
