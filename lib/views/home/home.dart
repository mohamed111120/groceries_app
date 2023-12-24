import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groceries_app/views/home/componants/custom_section_child.dart';
import 'package:groceries_app/views/home/componants/home_frist_section.dart';
import '../../view_model/app_images.dart';
import 'componants/home_main_section.dart';
import 'models/groceries_list_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              HomeFristSection(),
              SizedBox(
                height: 20,
              ),
              HomeMainSection(
                SectionName: 'Exclusive Offer',
              ),
              SizedBox(
                height: 20,
              ),
              HomeMainSection(
                SectionName: 'Best Selling',

              ),
              SizedBox(
                height: 20,
              ),
              HomeMainSection(
                  SectionName: 'Groceries',
                  child: SizedBox(
                    height: 80,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => CustomSectionChild(
                            groceriesListModel: GroceriesList[index]),
                        separatorBuilder: (context, index) => SizedBox(width: 10,),
                        itemCount: GroceriesList.length),
                  )),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
