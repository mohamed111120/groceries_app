import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groceries_app/view_model/app_text_style.dart';
import 'package:groceries_app/views/auth/auth_componats/custom_text_field.dart';
import 'package:groceries_app/views/componants/custom_button.dart';
import 'package:groceries_app/views/home/homeLayout.dart';

import '../../view_model/app_colors.dart';
import '../../view_model/app_images.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String id = 'SignUpScreen';

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

                  'Sign Up',
                  style: AppTextStyle.title,
                ),
                SizedBox(height: 10,),
                Text(
                  'Enter your credentials to continue',
                  style: AppTextStyle.subTitle,
                ),
                SizedBox(height: 20,),
                Text(
                  'Username',
                  style: TextStyle(
                      color: AppColors.gray,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                CustomTextField(),
                SizedBox(height: 35,),
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
                  'Password',
                  style: TextStyle(
                      color: AppColors.gray,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                CustomTextField(),
                SizedBox(height: 15,),

                RichText(
            
                    text: TextSpan(
                  children: [
                    TextSpan(
                      text:'By continuing you agree to our',
                    style: TextStyle(
                      color: AppColors.gray,
                      fontSize: 16,fontWeight: FontWeight.w400)
                    ),
                    TextSpan(
            
                        text:' Terms of Service ',
                        style: TextStyle(
                          color: AppColors.green,
                            fontSize: 16,fontWeight: FontWeight.w400)
                    ),
                    TextSpan(
                        text:' and ',
                        style: TextStyle(
                          color: AppColors.gray,
                            fontSize: 16,fontWeight: FontWeight.w400)
                    ),
                    TextSpan(
                        text:'Privacy Policy.',
                        style: TextStyle(
                            color: AppColors.green,
                            fontSize: 16,fontWeight: FontWeight.w400)
                    ),
            
                  ]
                )),
                // and Privacy Policy.
                SizedBox(height: 20,),
                // Why Color Chang if is Not onPressed
                CustomButton(title: 'Sing Up',onPressed: () {
                  Navigator.pushNamed(context, HomeLayout.id);

                },),
                SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
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
