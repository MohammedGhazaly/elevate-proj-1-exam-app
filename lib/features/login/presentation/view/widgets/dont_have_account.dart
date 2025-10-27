import 'package:easy_localization/easy_localization.dart';
import 'package:exam_app/core/languages/locale_keys.g.dart';
import 'package:exam_app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: LocaleKeys.login_no_account.tr(),
        children: [
          TextSpan(
            text: LocaleKeys.login_sign_up.tr(),
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: AppColors.prime,
            ),
          ),
        ],
      ),
    );
  }
}
