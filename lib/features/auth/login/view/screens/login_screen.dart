import 'package:aryamanwig/app/themes/app_text_styles.dart';
import 'package:aryamanwig/app/widgets/inputfield/input_field.dart';
import 'package:aryamanwig/core/constant/image_path.dart';
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                  validator: passwordValidator,
                  topLebel: 'Password',
                  hintText: 'Enter your password',
                  obscureText: true,
                  suffixIcon: GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.visibility_off_outlined),
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: Text("submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
