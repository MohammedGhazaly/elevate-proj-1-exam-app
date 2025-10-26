

import 'package:exam_app/features/login/presentation/view/widgets/email_and_password_form.dart';
import 'package:exam_app/features/login/presentation/view/widgets/remeber_me_and_forgot_password_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(
        horizontal: 16.0.w,
        vertical: 24.0.h,
      ),
      child: Column(
        children: [
          EmailAndPasswordForm(),
          SizedBox(height: 24.h),
          RemeberMeAndForgotPasswordRow(),
        ],
      ),
    );
  }
}
