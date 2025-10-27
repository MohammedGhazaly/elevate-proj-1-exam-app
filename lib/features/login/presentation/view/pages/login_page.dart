import 'package:easy_localization/easy_localization.dart' as ez;
import 'package:exam_app/core/languages/lang.dart';
import 'package:exam_app/core/languages/locale_keys.g.dart';
import 'package:exam_app/core/shared/widgets/custom_app_bar.dart';
import 'package:exam_app/features/login/presentation/view/widgets/login_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isArabic = context.locale.languageCode == arabicLocale.languageCode;
    context.setLocale(englishLocale);
    return Directionality(
      textDirection: isArabic ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        appBar: CustomAppBar(
          right: 16.w,
          left: 16.w,
          title: LocaleKeys.login_log_in.tr(),
          isCenteredTitle: false,
        ),
        body: LoginBody(),
      ),
    );
  }
}
