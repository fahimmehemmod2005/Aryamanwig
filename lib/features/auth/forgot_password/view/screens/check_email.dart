import 'package:aryamanwig/app/themes/app_text_styles.dart';
import 'package:aryamanwig/app/widgets/buttons/primary_button.dart';
import 'package:aryamanwig/app/widgets/richtext/custom_richtext.dart';
import 'package:aryamanwig/core/constant/image_path.dart';
import 'package:aryamanwig/core/constant/route_name.dart';
import 'package:aryamanwig/features/auth/forgot_password/view/widgets/opt_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class CheckEmail extends StatefulWidget {
  const CheckEmail({super.key});

  @override
  State<CheckEmail> createState() => _CheckEmailState();
}

class _CheckEmailState extends State<CheckEmail> {
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
                  'Check your email',
                  style: AppTextStyles.title18_600w(color: Color(0xff1F1919)),
                ),

                SizedBox(height: 8.h),

                // --------------- sub title ----------------
                Text(
                  textAlign: TextAlign.center,
                  'We sent a reset link to abc...@gmail.com enter 6 digit code that mentioned in the email',
                  style: AppTextStyles.title16_400w(color: Color(0xff777980)),
                ),

                SizedBox(height: 32.h),

                // ------------- OTP input field -----------------
                OtpInputField(),

                SizedBox(height: 43.h),

                // ------------------- primary button ----------------
                PrimaryButton(
                  onTap: () {
                     Navigator.pushNamed(context, RouteName.setnewpassword);
                  },
                  text: 'Verify OTP',
                ),

                SizedBox(height: 12.h),

                CustomRichText(
                  firstText: "Haven't got the email yet? ",
                  secondText: 'Resend email',
                  onTap: () {
                    Navigator.pushNamed(context, RouteName.forgotpassword);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
