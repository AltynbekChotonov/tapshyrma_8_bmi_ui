import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text.dart';
import '../utils/text_styles.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({Key? key, required this.onTap}) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        width: double.infinity,
        color: AppColor.buttonColor,
        child: const Center(
          child: Text(AppText.calculate, style: AppTextStyle.titleStyle),
        ),
      ),
    );
  }
}
