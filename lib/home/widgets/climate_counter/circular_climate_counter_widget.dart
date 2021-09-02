import 'package:flutter/material.dart';
import 'package:totalcross/util/layout_util.dart';

Widget circularClimateCounterWidget(BuildContext context,
    {required int climateValue}) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Align(
        alignment: Alignment.center,
        child: Image.asset(
          "assets/images/term.png",
          scale: MediaQuery.of(context).size.width <= 320 ? 2 : 1.4,
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$climateValue",
            style: TextStyle(
              fontSize: LayoutUtil.resizeContent(44, context),
              color: Colors.grey[600]

            ),
          ),
          Text(
            "Climate",
            style: TextStyle(
              fontSize: LayoutUtil.resizeContent(12, context),
              color: Colors.grey[600]
            ),
          )
        ],
      ),
    ],
  );

}
