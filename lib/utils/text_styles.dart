import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle {
  static const TextStyle greyTextStyle = TextStyle(
    fontSize: 28,
    color: AppColor.greyText,
  );

  static const TextStyle cmStyle = TextStyle(
    fontSize: 18,
    color: AppColor.greyText,
    height: 3.7,
  );

  static const TextStyle valueStyle = TextStyle(
    fontSize: 65,
    color: AppColor.whiteText,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle titleStyle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w700,
    height: 0.3,
  );

  static const TextStyle resultTextStyle = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w700,
  );
}
