import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solidsoftware/utilities/app_colors.dart';
import 'package:solidsoftware/utilities/view_helper.dart';
import 'package:solidsoftware/widgets/custom_button.dart';

Widget buttonWithOnlyAction(String text, action, isBorder, context, fontSize,
   onTap, {double? btnHeight}) {
  return CustomButton(
    idleText: text,
     buttonColor:loginText,
    textColor: textColor,
    onTap: onTap,
    textSize: fontSize,
  );
}
