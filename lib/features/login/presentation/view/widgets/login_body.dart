import 'package:easy_localization/easy_localization.dart';
import 'package:exam_app/core/languages/locale_keys.g.dart';
import 'package:exam_app/core/shared/widgets/custom_button.dart';
import 'package:exam_app/core/theme/app_colors.dart';
import 'package:exam_app/features/login/presentation/view/widgets/dont_have_account.dart';
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
          SizedBox(height: 48.h),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 500,
            ),
            child: CustomButton(
              title: LocaleKeys.login_log_in_button.tr(),
              radius: 100.r,
              isGradient: false,
              backGroundColor: AppColors.prime,
              onTap: () {
                //todo: implement login functionality
              },
            ),
          ),
          SizedBox(height: 16.h),
          DontHaveAccount(),
        ],
      ),
    );
  }
}
