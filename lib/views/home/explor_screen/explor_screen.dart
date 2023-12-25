import 'package:flutter/cupertino.dart';
import 'package:groceries_app/view_model/app_text_style.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Center(child: Text('ExploreScreen',style: AppTextStyle.title,))
      ],
    );
  }
}
