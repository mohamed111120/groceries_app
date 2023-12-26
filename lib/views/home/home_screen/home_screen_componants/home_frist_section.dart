import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groceries_app/view_model/utils/app_colors.dart';
import 'package:groceries_app/view_model/utils/app_text_style.dart';
import 'package:groceries_app/views/home/home_componants/custom_search_bar.dart';

import '../../../../view_model/utils/app_images.dart';

class HomeFristSection extends StatelessWidget {
  const HomeFristSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 15),
            child: SvgPicture.asset(
              AppImages.carrot,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on_rounded),
            Text(
              'Dhaka, Banassre',
              style: AppTextStyle.subTitle,
            )
          ],
        ),
        SizedBox(height: 15,),
        CustomSearchBar(),
      ],
    );
  }
}
