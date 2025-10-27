import 'package:easy_localization/easy_localization.dart';
import 'package:exam_app/core/languages/locale_keys.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RemeberMeAndForgotPasswordRow extends StatefulWidget {
  RemeberMeAndForgotPasswordRow({super.key});

  @override
  State<RemeberMeAndForgotPasswordRow> createState() =>
      _RemeberMeAndForgotPasswordRowState();
}

class _RemeberMeAndForgotPasswordRowState
    extends State<RemeberMeAndForgotPasswordRow> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 20,
                height: 20,
                child: Checkbox(
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),
              ),
              SizedBox(width: 8),
              Text(
                LocaleKeys.login_remember_me.tr(),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              // todo: implement navigation to forgot password screen
              // Handle forgot password tap
              // You can navigate to the forgot password screen here
            },
            child: Text(
              LocaleKeys.login_forgot_password.tr(),
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
