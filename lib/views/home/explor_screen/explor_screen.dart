import 'package:flutter/cupertino.dart';
import 'package:groceries_app/view_model/utils/app_colors.dart';
import 'package:groceries_app/view_model/utils/app_images.dart';
import 'package:groceries_app/view_model/utils/app_text_style.dart';
import 'package:groceries_app/views/home/explor_screen/componants/custom_explor_card.dart';
import 'package:groceries_app/views/home/home_componants/custom_search_bar.dart';

import 'model/export_card_model.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                'Find Products',
                style: AppTextStyle.title,
              ),
              SizedBox(
                height: 20,
              ),
              CustomSearchBar(),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                itemCount: exportCards.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
                itemBuilder: (context, index) =>CustomExplorScreenCard(exportCardModel: exportCards[index]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
