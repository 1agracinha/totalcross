import 'package:flutter/material.dart';
import 'package:totalcross/util/layout_util.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.08,
            top: MediaQuery.of(context).size.height * 0.07),
        child: Image.asset(
          "assets/images/logo_oficial_horizontal_branca.png",
          scale: LayoutUtil.isTablet(context) ? 6 : 7,
        ),
      ),
    );
  }
}
