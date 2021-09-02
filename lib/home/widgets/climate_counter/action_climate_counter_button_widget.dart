import 'package:flutter/material.dart';

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
              scale: MediaQuery.of(context).size.width <= 320 ? 1.6 : 1.2
            )
          : Image.asset(
              "assets/images/minus.png",
              scale: MediaQuery.of(context).size.width <= 320 ? 1.6 : 1.2,
            ),

    );
  }
}
