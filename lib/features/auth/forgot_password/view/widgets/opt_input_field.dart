import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class OtpInputField extends StatelessWidget {
  const OtpInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PinInputTextField(
      keyboardType: TextInputType.number,
      pinLength: 6,
      decoration: BoxLooseDecoration(
        strokeColorBuilder: PinListenColorBuilder(
          Color(0xffDE3526),
          Color(0xffE9E9EA),
        ),
        
        radius: Radius.circular(10.r)
      ),
    );
  }
}