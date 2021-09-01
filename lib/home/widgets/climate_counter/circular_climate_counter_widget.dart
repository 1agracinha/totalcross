import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:totalcross/theme/colors.dart';
import 'package:totalcross/util/layout_util.dart';

Padding circularClimateCounterWidget(BuildContext context,
    {required int climateValue}) {
  return Padding(
    padding: EdgeInsets.all(LayoutUtil.resizeContent(20, context)),
    child: DottedBorder(
      dashPattern: [0, 26],
      strokeCap: StrokeCap.round,
      borderType: BorderType.Circle,
      color: ColorUtil.primaryColor,
      strokeWidth: LayoutUtil.resizeContent(3, context),
      padding: EdgeInsets.all(LayoutUtil.resizeContent(8, context)),
      child: Container(
        child: CircleAvatar(
          backgroundColor: ColorUtil.primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$climateValue",
                style: TextStyle(
                  fontSize: LayoutUtil.resizeContent(44, context),
                ),
              ),
              Text(
                "Climate",
                style: TextStyle(
                  fontSize: LayoutUtil.resizeContent(12, context),
                ),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: ColorUtil.accentColor[200],
          shape: BoxShape.circle,
        ),
        width: LayoutUtil.resizeContent(140, context),
        height: LayoutUtil.resizeContent(140, context),
        padding: EdgeInsets.all(LayoutUtil.resizeContent(14, context)),
      ),
    ),
  );
}
