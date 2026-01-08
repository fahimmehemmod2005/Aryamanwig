import 'package:aryamanwig/app/themes/app_text_styles.dart';
import 'package:aryamanwig/app/widgets/buttons/primary_button.dart';
import 'package:aryamanwig/app/widgets/inputfield/input_field.dart';
import 'package:aryamanwig/core/constant/image_path.dart';
import 'package:aryamanwig/core/constant/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _emailController;
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
                  'Forgot password',
                  style: AppTextStyles.title18_600w(color: Color(0xff1F1919)),
                ),

                SizedBox(height: 8.h),

                // --------------- sub title ----------------
                Text(
                  'Please enter your email to reset the password',
                  style: AppTextStyles.title16_400w(color: Color(0xff777980)),
                ),

                SizedBox(height: 32.h),

                // ------------- email input field -----------------
                TextInputField(
                  controller: _emailController,
                  topLebel: 'Email',
                  hintText: 'Enter your email',
                ),

                SizedBox(height: 43.h),

                // ------------------- primary button ----------------
                PrimaryButton(onTap: () {
                  Navigator.pushNamed(context, RouteName.checkemail);
                }, text: 'Send OTP'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
