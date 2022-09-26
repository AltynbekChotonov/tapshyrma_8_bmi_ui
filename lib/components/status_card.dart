import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(color: AppColor.cardColor, child: child),
    );
  }
}
