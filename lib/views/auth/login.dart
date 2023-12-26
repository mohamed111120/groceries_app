import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groceries_app/view_model/utils/app_text_style.dart';
import 'package:groceries_app/views/auth/auth_componats/custom_text_field.dart';
import 'package:groceries_app/views/auth/sign_up.dart';
import 'package:groceries_app/views/componants/custom_button.dart';

import '../../view_model/utils/app_colors.dart';
import '../../view_model/utils/app_images.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String id = 'Login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: SvgPicture.asset(
                      AppImages.carrot,
                    ),
                  ),
                ),
                Text(
                  'Loging',
                  style: AppTextStyle.title,
                ),
                SizedBox(height: 10,),
                Text(
                  'Enter your emails and password',
                  style: AppTextStyle.subTitle,
                ),
                SizedBox(height: 20,),
                Text(
                  'Email',
                  style: TextStyle(
                      color: AppColors.gray,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                CustomTextField(),
                SizedBox(height: 35,),
                Text(
                  'password',
                  style: TextStyle(
                      color: AppColors.gray,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                CustomTextField(),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                CustomButton(title: 'Log in',onPressed: () {
                  Navigator.pushNamed(context, SignUpScreen.id);
                },),
                SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account? ',
                      style: TextStyle(
                          color: AppColors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Singup',
                      style: TextStyle(
                          color: AppColors.green,
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
            
                  ],
                )
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
