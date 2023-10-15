
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:solidsoftware/utilities/CustomText.dart';
import 'package:solidsoftware/utilities/CustomTextStyle.dart';
import 'package:solidsoftware/utilities/app_colors.dart';

Widget descriptionOfferText(text,size) {
  return CustomText(
      text: text,
      textAlign: TextAlign.start,
      customTextStyle: RegularStyle(fontSize: size, color: greyTextForm));
}