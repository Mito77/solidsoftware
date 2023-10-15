import 'package:solidsoftware/generated/l10n.dart';
import 'package:solidsoftware/utilities/CustomText.dart';
import 'package:solidsoftware/utilities/CustomTextStyle.dart';
import 'package:solidsoftware/utilities/app_colors.dart';
import 'package:solidsoftware/utilities/image_paths.dart';
import 'package:solidsoftware/widgets/buttonWithOnlyAction.dart';
import 'package:solidsoftware/widgets/imageSlider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
internetDialog(context,onTap) {
  return Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Container(
      height: 350.h,
      width: 900.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 10.h,
          ),
          imageHelper(internet, 150.w, 150.h),
          SizedBox(
            height: 20.h,
          ),
          hintText(S.current.oppps),
          hintText(S.current.internet),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: 180.w,
            height: 45.h,
            child: buttonWithOnlyAction(
                S.current.again, 'tryAgain', false, context,14.sp,onTap),
          )
        ],
      ),
    ),
  );
}

Widget hintText(text) {
  return CustomText(
      text: text,
      textAlign: TextAlign.center,
      customTextStyle: BoldStyle(fontSize: 20.sp, color: accentColor));
}
