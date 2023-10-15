
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solidsoftware/utilities/CustomText.dart';
import 'package:solidsoftware/utilities/CustomTextStyle.dart';
import 'package:solidsoftware/utilities/app_colors.dart';
 import 'package:solidsoftware/widgets/imageSlider.dart';

Widget noDataWidget (text,image){
  return Column(
    children: [
      SizedBox(
        height: 230.h,
      ),
      imageHelper(image,100.w,100.h),
      SizedBox(
        height: 25.h,
      ),
      Container(
        width: 300.w,
        child: CustomText(
            text: text,
            textAlign: TextAlign.center,
            customTextStyle: MediumStyle(fontSize: 16.sp, color: accentColor.withOpacity(.3))),
      )
    ],
  );
}