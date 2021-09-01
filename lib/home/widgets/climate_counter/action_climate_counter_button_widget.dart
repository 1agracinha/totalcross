import 'package:flutter/material.dart';
import 'package:totalcross/theme/colors.dart';
import 'package:totalcross/util/layout_util.dart';

class ActionClimateCounterButtonWidget extends StatelessWidget {
  final void Function() onTap;
  final IconData icon;
  const ActionClimateCounterButtonWidget(
      {required this.onTap, this.icon = Icons.add});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: LayoutUtil.resizeContent(16, context),
        backgroundColor: ColorUtil.primaryColor,
        child: Center(
            child: Icon(
          icon,
          size: LayoutUtil.resizeContent(18, context),
        )),
      ),
    );
  }
}
