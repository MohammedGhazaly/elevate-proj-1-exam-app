// TODO: presentation SignupBody
import 'package:easy_localization/easy_localization.dart';
import 'package:exam_app/core/languages/locale_keys.g.dart';
import 'package:exam_app/core/shared/widgets/custom_button.dart';
import 'package:exam_app/core/shared/widgets/custom_text_field.dart';
import 'package:exam_app/core/theme/app_colors.dart';
import 'package:exam_app/core/theme/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          vertical: 24.h,
          horizontal: 16.w,
        ),
        child: Column(
          children: [
            CustomTextFormField(
              hintText: LocaleKeys.signup_enter_you_user_name.tr(),
              labelWidget: Text(
                LocaleKeys.signup_user_name.tr(),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    hintText: LocaleKeys.signup_enter_you_user_name.tr(),
                    labelWidget: Text(
                      LocaleKeys.signup_user_name.tr(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Expanded(
                  child: CustomTextFormField(
                    hintText: LocaleKeys.signup_enter_you_user_name.tr(),
                    labelWidget: Text(
                      LocaleKeys.signup_user_name.tr(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            CustomTextFormField(
              hintText: LocaleKeys.signup_email.tr(),
              labelWidget: Text(
                LocaleKeys.signup_enter_email.tr(),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    hintText: LocaleKeys.signup_password.tr(),
                    labelWidget: Text(
                      LocaleKeys.signup_enter_password.tr(),
                    ),
                  ),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Expanded(
                  child: CustomTextFormField(
                    hintText: LocaleKeys.signup_confirm_password.tr(),
                    labelWidget: Text(
                      LocaleKeys.signup_confirm_password.tr(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            CustomTextFormField(
              hintText: LocaleKeys.signup_phone.tr(),
              labelWidget: Text(
                LocaleKeys.signup_enter_phone_number.tr(),
              ),
            ),
            SizedBox(
              height: 48.h,
            ),
            CustomButton(
              title: LocaleKeys.signup_sign_up.tr(),
              backGroundColor: AppColors.prime,
              onTap: () {},
              isGradient: false,
              radius: 100.r,
              titleStyle: Styles.medium(context, 16.sp),
              // isLoading: true,
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  LocaleKeys.signup_already_have_an_account.tr(),
                  style: Styles.regular(context, 16),
                ),
                SizedBox(
                  width: 6.w,
                ),
                Text(
                  LocaleKeys.signup_login.tr(),
                  style: Styles.medium(
                    context,
                    16,
                  ).copyWith(color: AppColors.prime),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
