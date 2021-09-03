import 'package:flutter/material.dart';

class PowerButtonWidget extends StatelessWidget {
  final Function onTap;
  final IconData icon;
  final String label;
  final bool isDayOn;

  PowerButtonWidget(
      {this.isDayOn = true,
      required this.onTap,
      required this.icon,
      required this.label});
  @override
  Widget build(BuildContext context) {
    return _powerButtonWidget(context,
        icon: icon, label: label, onTap: onTap, isDayOn: isDayOn);
  }

  Widget _powerButtonWidget(BuildContext context,
      {required IconData icon,
      required String label,
      required Function onTap,
      required bool isDayOn}) {
    return Wrap(
      children: [
        GestureDetector(
          onTap: () {
            onTap();
          },
          child: isDayOn
              ? Image.asset(
                  "assets/images/on_day.png",
                  scale: MediaQuery.of(context).size.width <= 320 ? 2.2 : 2,
                )
              : Image.asset(
                  "assets/images/on_night.png",
                  scale: MediaQuery.of(context).size.width <= 320 ? 2 : 2,
                ),
        ),
        GestureDetector(
            onTap: () {
              onTap();
            },
            child: isDayOn
                ? Image.asset(
                    "assets/images/off_day.png",
                    scale: MediaQuery.of(context).size.width <= 320 ? 2.2 : 2,
                  )
                : Image.asset(
                    "assets/images/off_night.png",
                    scale: MediaQuery.of(context).size.width <= 320 ? 2.2 : 2,
                  )),
      ],
    );
  }
}
