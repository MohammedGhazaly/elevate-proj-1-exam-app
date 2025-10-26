import 'package:exam_app/core/theme/app_colors.dart';
import 'package:exam_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final canPop = Navigator.canPop(context);

    return AppBar(
      leadingWidth: 40.w,
      titleSpacing: 0,
      title: Text(
        title,
        style: Styles.medium(context, 20),
      ),
      leading: canPop
          ? InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.chevron_left,
                color: AppColors.black,
                size: 38.sp,
              ),
            )
          : null,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
