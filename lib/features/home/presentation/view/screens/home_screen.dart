import 'package:aryamanwig/app/themes/app_text_styles.dart';
import 'package:aryamanwig/app/widgets/inputfield/input_field.dart';
import 'package:aryamanwig/core/constant/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    CircleAvatar(child: Image.asset(ImagePath.user)),
                    SizedBox(width: 10.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello, Treesna',style: AppTextStyles.title18_600w(),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(ImagePath.location),
                            SizedBox(width: 5.w),
                            Text('Switzerland'),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    SvgPicture.asset(ImagePath.cart),
                    SizedBox(width: 10.w),
                    SvgPicture.asset(ImagePath.notification),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
