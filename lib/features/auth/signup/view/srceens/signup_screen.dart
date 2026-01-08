import 'package:aryamanwig/app/themes/app_text_styles.dart';
import 'package:aryamanwig/app/widgets/buttons/primary_button.dart';
import 'package:aryamanwig/app/widgets/buttons/social_button.dart';
import 'package:aryamanwig/app/widgets/inputfield/input_field.dart';
import 'package:aryamanwig/app/widgets/richtext/custom_richtext.dart';
import 'package:aryamanwig/core/constant/image_path.dart';
import 'package:aryamanwig/core/constant/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _emailController;
    _passwordController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 32.h),

                // ---------------- app logo -----------------
                SvgPicture.asset(ImagePath.appLogo),

                SizedBox(height: 24.h),

                // -------------------- title ----------------
                Text(
                  'Sign Up to buy and sell',
                  style: AppTextStyles.title18_600w(color: Color(0xff1F1919)),
                ),

                SizedBox(height: 24.h),

                // ------------- first name input field -----------------
                TextInputField(
                  topLebel: 'First Name',
                  hintText: 'Enter your first name',
                ),

                SizedBox(height: 16.h),

                // ------------- last name input field -----------------
                TextInputField(
                  topLebel: 'Last Name',
                  hintText: 'Enter your last name',
                ),

                SizedBox(height: 16.h),

                // ------------- email input field -----------------
                TextInputField(
                  controller: _emailController,
                  topLebel: 'Email',
                  hintText: 'Enter your email',
                ),

                SizedBox(height: 16.h),

                // ------------- number input field -----------------
                TextInputField(
                  textInputType: TextInputType.number,
                  topLebel: 'Contact Number',
                  hintText: 'Enter contact number',
                ),

                SizedBox(height: 16.h),

                // ------------- location input field -----------------
                TextInputField(
                  topLebel: 'Location',
                  hintText: 'Enter your Location',
                ),

                SizedBox(height: 16.h),

                // ------------- password input field -----------------
                TextInputField(
                  controller: _passwordController,
                  topLebel: 'Password',
                  hintText: 'Enter your password',
                  obscureText: true,
                  suffixIcon: GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.visibility_off_outlined),
                  ),
                ),

                SizedBox(height: 20.h),

                // ------------------- primary button ----------------
                PrimaryButton(onTap: () {
                   Navigator.pushNamed(context, RouteName.login);
                }, text: 'Sign In'),

                SizedBox(height: 24.h),

                Text('Or'),

                SizedBox(height: 24.h),

                // ---------------- Social buttons ---------------
                SocialButton(
                  text: 'Google',
                  imagePath: ImagePath.google,
                  onTap: () {},
                ),
                SizedBox(height: 16.h),
                SocialButton(
                  text: 'Apple',
                  imagePath: ImagePath.apple,
                  onTap: () {},
                ),
                SizedBox(height: 16.h),
                SocialButton(
                  text: 'Microsoft',
                  imagePath: ImagePath.microsoft,
                  onTap: () {
                   
                  },
                ),
                SizedBox(height: 16.h),

                // --------------- rich text -----------------
                CustomRichText(
                  firstText: 'Have an account? ',
                  secondText: 'Sign In',
                  onTap: () => Navigator.pushNamed(context, RouteName.login),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
