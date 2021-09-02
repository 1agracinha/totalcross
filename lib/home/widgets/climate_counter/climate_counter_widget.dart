import 'package:flutter/material.dart';
import 'package:totalcross/home/widgets/climate_counter/action_climate_counter_button_widget.dart';
import 'package:totalcross/home/widgets/climate_counter/circular_climate_counter_widget.dart';

class ClimateCounterWidget extends StatefulWidget {
  @override
  _ClimateCounterWidgetState createState() => _ClimateCounterWidgetState();
}

class _ClimateCounterWidgetState extends State<ClimateCounterWidget> {
  int climateValue = 20;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ActionClimateCounterButtonWidget(
              isAdd: false,
              onTap: () => _decrementClimateValue(),
              icon: Icons.remove),
          circularClimateCounterWidget(context, climateValue: climateValue),
          ActionClimateCounterButtonWidget(
              isAdd: true, onTap: () => _incrementClimateValue())
        ],
      ),
    );
  }

  void _incrementClimateValue() {
    setState(() {
      climateValue++;
    });
  }

  void _decrementClimateValue() {
    setState(() {
      climateValue--;
    });
  }
}
