import 'package:exam_app/core/theme/app_colors.dart';
import 'package:exam_app/core/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  // added isCenteredTitle parameter to make title go left if needed
  final bool? isCenteredTitle;
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  const CustomAppBar({
    super.key,
    required this.title,
    this.isCenteredTitle = false,
    this.left,
    this.right,
    this.top,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    final canPop = Navigator.canPop(context);

    return Padding(
      padding: EdgeInsets.fromLTRB(
        left ?? 0,
        top ?? 0,
        right ?? 0,
        bottom ?? 0,
      ),
      child: AppBar(
        leadingWidth: 40.w,
        titleSpacing: 0,
        // added isCenteredTitle usage make the title go left if needed
        centerTitle: isCenteredTitle ?? true,
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
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
