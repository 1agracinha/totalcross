import 'package:flutter/material.dart';
import 'dart:ui';

class BackgroundWidget extends StatelessWidget {
  final bool isTurnOn;
  const BackgroundWidget({this.isTurnOn = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: isTurnOn
              ? AssetImage('assets/images/light.png')
              : AssetImage('assets/images/dark.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
        child: Container(
          color: Colors.black.withOpacity(0.2),
        ),
      ),
    );
  }
}
