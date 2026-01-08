import 'package:aryamanwig/app/themes/app_text_styles.dart';
import 'package:aryamanwig/app/widgets/buttons/primary_button.dart';
import 'package:aryamanwig/app/widgets/buttons/social_button.dart';
import 'package:aryamanwig/app/widgets/inputfield/input_field.dart';
import 'package:aryamanwig/app/widgets/richtext/custom_richtext.dart';
import 'package:aryamanwig/core/constant/image_path.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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

                // ------------- email input field -----------------
                TextInputField(
                  controller: _emailController,
                  topLebel: 'Email',
                  hintText: 'Enter your email',
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

                SizedBox(height: 4.h),

                // ----------- forgot button -------------
                Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 43.h),

                // ------------------- primary button ----------------
                PrimaryButton(onTap: () {}, text: 'Sign In'),

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
                  onTap: () {},
                ),
                SizedBox(height: 16.h),

                CustomRichText(
                  firstText: 'Have an account? ',
                  secondText: 'Sign Up',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
