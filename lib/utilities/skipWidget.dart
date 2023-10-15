import 'package:solidsoftware/generated/l10n.dart';
import 'package:solidsoftware/utilities/CustomText.dart';
import 'package:solidsoftware/utilities/CustomTextStyle.dart';
import 'package:solidsoftware/utilities/app_colors.dart';
import 'package:solidsoftware/utilities/view_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget skipWidget(context) {
  return InkWell(
    onTap: () {
      ViewHelper(context).openMainPageWidgetScreen(1);
    },
    child: CustomText(
      customTextStyle: BoldStyle(
          textDecoration: TextDecoration.underline,
          fontSize: 16.sp,
          color: buttonColor),
      text: '${S.current.skip}',
    ),
  );
}
