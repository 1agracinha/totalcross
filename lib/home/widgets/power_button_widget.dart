import 'package:flutter/material.dart';
import 'package:totalcross/theme/colors.dart';
import 'package:totalcross/util/layout_util.dart';

class PowerButtonWidget extends StatelessWidget {
  final bool isTurnOn;
  final Function onTap;
  final IconData icon;
  final String label;
  final bool isLightOption;

  PowerButtonWidget(
      {this.isTurnOn = true,
      this.isLightOption = true,
      required this.onTap,
      required this.icon,
      required this.label});
  @override
  Widget build(BuildContext context) {
    return _powerButtonWidget(context,
        isTurnOn: isTurnOn,
        icon: icon,
        label: label,
        onTap: onTap,
        isLightOption: isLightOption);
  }

  GestureDetector _powerButtonWidget(BuildContext context,
      {required bool isTurnOn,
      required IconData icon,
      required String label,
      required Function onTap,
      required bool isLightOption}) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: EdgeInsets.all(10),
        width: LayoutUtil.resizeContent(80, context),
        height: LayoutUtil.resizeContent(70, context),
        padding: EdgeInsets.symmetric(
            horizontal: LayoutUtil.resizeContent(10, context),
            vertical: LayoutUtil.resizeContent(14, context)),
        decoration: BoxDecoration(
          color: isTurnOn
              ? ColorUtil.primaryColor
              : isLightOption
                  ? ColorUtil.primaryColor.withOpacity(0.2)
                  : Colors.black.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Icon(
                  icon,
                  color:
                      isTurnOn ? ColorUtil.accentColor : ColorUtil.primaryColor,
                  size: LayoutUtil.resizeContent(20, context),
                )),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                label,
                style: TextStyle(
                    color: isTurnOn
                        ? ColorUtil.accentColor
                        : ColorUtil.primaryColor,
                    fontSize: LayoutUtil.resizeContent(16, context)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
