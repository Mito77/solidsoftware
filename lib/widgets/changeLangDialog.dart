import 'dart:async';
import 'dart:math';

import 'package:solidsoftware/generated/l10n.dart';
import 'package:solidsoftware/models/app_helper.dart'
;import 'package:provider/provider.dart';

import 'package:solidsoftware/utilities/CustomText.dart';
import 'package:solidsoftware/utilities/CustomTextStyle.dart';
import 'package:solidsoftware/utilities/app_colors.dart';
import 'package:solidsoftware/utilities/shared_pref_helper.dart';
import 'package:solidsoftware/utilities/view_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future changeLangDialog(context, h, w,onTap,onTapAr) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      actions: <Widget>[
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: h * .1,
                width: w,
                color: greyColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: w * .02),
                  child: Row(
                    children: [
                      Container(
                        width: w * .64,
                        child: CustomText(
                            customTextStyle: BoldStyle(
                                fontSize: 15.sp,
                                color: blackColor.withOpacity(.6)),
                            text: '${S.current.language}'),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          color: whiteColor,
                          padding: EdgeInsets.symmetric(
                              horizontal: w * .01, vertical: h * .01),
                          child: Icon(
                            Icons.close,
                            color: blackColor,
                            size: 25.sp,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: h * .02,
              ),
              Column(
                children: [
                  for (int i = 0; i < 2; i++)
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: i==0?h*.02:0
                      ),
                      child: InkWell(
                        onTap:i==0?onTap:onTapAr,
                        child: Container(
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                              border: Border.all(
                                  color: i == 0 ? buttonColor : loginText)),
                          padding: EdgeInsets.symmetric(vertical: h * .01),
                          alignment: Alignment.center,
                          child: CustomText(
                              textAlign: TextAlign.center,
                              customTextStyle: BoldStyle(
                                  fontSize: 17.sp,
                                  color: i == 0 ? buttonColor : loginText),
                              text: i == 0 ? 'English' : 'العربية'),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        )
      ],
    ),
  );
}

