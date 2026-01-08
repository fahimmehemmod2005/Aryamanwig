import 'package:aryamanwig/app/themes/app_text_styles.dart';
import 'package:aryamanwig/app/widgets/buttons/primary_button.dart'
    show PrimaryButton;
import 'package:aryamanwig/app/widgets/inputfield/input_field.dart';
import 'package:aryamanwig/core/constant/image_path.dart';
import 'package:aryamanwig/core/constant/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SetNewPassword extends StatefulWidget {
  const SetNewPassword({super.key});

  @override
  State<SetNewPassword> createState() => _SetNewPasswordState();
}

class _SetNewPasswordState extends State<SetNewPassword> {
  final _newPassword = TextEditingController();
  final _confirmPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _newPassword;
    _confirmPassword;
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
                  'Set a new password',
                  style: AppTextStyles.title18_600w(color: Color(0xff1F1919)),
                ),

                SizedBox(height: 8.h),

                // --------------- sub title ----------------
                Text(
                  textAlign: TextAlign.center,
                  "Create a new password. Ensure it differs from previous ones for security",
                  style: AppTextStyles.title16_400w(color: Color(0xff777980)),
                ),

                SizedBox(height: 32.h),

                // ------------- password input field -----------------
                TextInputField(
                  controller: _newPassword,
                  topLebel: 'Password',
                  hintText: 'Enter your password',
                  obscureText: true,
                  suffixIcon: GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.visibility_off_outlined),
                  ),
                ),

                SizedBox(height: 10.h),

                // ------------- new Password input field -----------------
                TextInputField(
                  controller: _confirmPassword,
                  topLebel: 'Confirm Password',
                  hintText: 'Re-enter password',
                  obscureText: true,
                  suffixIcon: GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.visibility_off_outlined),
                  ),
                ),

                SizedBox(height: 30.h),

                // ------------------- primary button ----------------
                PrimaryButton(
                  onTap: () {
                   Navigator.pushNamed(context, RouteName.resetpassword);
                  },
                  text: 'Update Password',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
