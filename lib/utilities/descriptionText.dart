import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solidsoftware/utilities/CustomText.dart';
import 'package:solidsoftware/utilities/CustomTextStyle.dart';
import 'package:solidsoftware/utilities/app_colors.dart';

Widget descriptionText(text,fontSize) {
  return CustomText(
      text: text,
      textAlign: TextAlign.center,
      customTextStyle: MediumStyle(fontSize: fontSize, color: accentColor));
}
