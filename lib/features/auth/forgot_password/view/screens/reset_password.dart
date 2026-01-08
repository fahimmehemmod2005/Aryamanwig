import 'package:aryamanwig/app/themes/app_text_styles.dart';
import 'package:aryamanwig/app/widgets/buttons/primary_button.dart';
import 'package:aryamanwig/core/constant/image_path.dart';
import 'package:aryamanwig/core/constant/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                "Your password has been successfully reset. click confirm to set a new password",
                style: AppTextStyles.title16_400w(color: Color(0xff777980)),
              ),

              SizedBox(height: 30.h),

              // ------------------- primary button ----------------
              PrimaryButton(
                onTap: () {
                   Navigator.pushNamed(context, RouteName.login);
                },
                text: 'Confirm',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
