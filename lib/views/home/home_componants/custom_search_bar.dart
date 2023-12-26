import 'package:flutter/material.dart';

import '../../../view_model/utils/app_colors.dart';
import '../../../view_model/utils/app_text_style.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      shadowColor: MaterialStatePropertyAll(MaterialStateColor.resolveWith(
              (states) => AppColors.gray.withOpacity(.2))),
      backgroundColor: MaterialStatePropertyAll(
          MaterialStateColor.resolveWith(
                  (states) => Colors.grey.withOpacity(.2))),
      elevation: MaterialStatePropertyAll(0.0),
      hintText: 'Search Store',
      hintStyle: MaterialStatePropertyAll(MaterialStateTextStyle.resolveWith((states) => AppTextStyle.subTitle)),
      leading: Icon(Icons.search),
    );
  }
}
