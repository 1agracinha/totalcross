import 'package:flutter/material.dart';
import 'package:totalcross/theme/colors.dart';
import 'package:totalcross/util/layout_util.dart';

class ActionClimateCounterButtonWidget extends StatelessWidget {
  final void Function() onTap;
  final IconData icon;
  final bool isAdd;
  const ActionClimateCounterButtonWidget(
      {required this.onTap, this.icon = Icons.add, required this.isAdd});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: isAdd
          ? Image.asset(
              "assets/images/plus.png",
              scale: 1.2,
            )
          : Image.asset(
              "assets/images/minus.png",
              scale: 1.2,
            ),

      //  CircleAvatar(
      //   radius: LayoutUtil.resizeContent(16, context),

      //   backgroundColor: ColorUtil.primaryColor,
      //   child: Center(
      //     child: Icon(
      //       icon,
      //       size: LayoutUtil.resizeContent(18, context),
      //     ),
      //   ),
      // ),
    );
  }
}
