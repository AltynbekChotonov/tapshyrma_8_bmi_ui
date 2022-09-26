import 'package:flutter/material.dart';
import 'package:tapshyrma_8_bmi_ui/utils/text_styles.dart';

import 'app_colors.dart';
import 'app_text.dart';

Future<void> showMyDialog(BuildContext context, String text) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      backgroundColor: AppColor.backgroundColor,
      title: const Center(
        child: Text(
          AppText.appBarTitle,
          style: AppTextStyle.resultTextStyle,
        ),
      ),
      content: Text(
        text,
        style: AppTextStyle.resultTextStyle,
        textAlign: TextAlign.center,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(AppText.backButton),
        ),
      ],
    ),
  );
}
