import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/text_styles.dart';

class WeigthAge extends StatelessWidget {
  const WeigthAge({
    Key? key,
    required this.text,
    required this.value,
    required this.add,
    required this.remove,
  }) : super(key: key);

  final String text;
  final int value;
  final void Function(int) remove;
  final void Function(int) add;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
        Text(text, style: AppTextStyle.greyTextStyle),
        Text('$value', style: AppTextStyle.valueStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RemoveAddButton(
              iconData: Icons.remove,
              onPressed: () => remove(value - 1),
            ),
            const SizedBox(width: 20),
            RemoveAddButton(
              iconData: Icons.add,
              onPressed: () => add(value + 1),
            ),
          ],
        ),
      ],
    );
  }
}

class RemoveAddButton extends StatelessWidget {
  const RemoveAddButton({
    Key? key,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);

  final IconData iconData;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColor.button2Color,
      foregroundColor: AppColor.whiteText,
      onPressed: onPressed,
      child: Icon(iconData, size: 40),
    );
  }
}
