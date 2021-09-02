import 'package:flutter/material.dart';
import 'package:totalcross/home/widgets/background_widget.dart';
import 'package:totalcross/home/widgets/climate_counter/climate_counter_widget.dart';
import 'package:totalcross/home/widgets/logo_widget.dart';
import 'package:totalcross/home/widgets/power_button_widget.dart';
import 'package:totalcross/util/layout_util.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDayOn = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundWidget(
          isTurnOn: isDayOn,
        ),
        LogoWidget(),
        ClimateCounterWidget(),
        powerButtons()
      ],
    );
  }

  Align powerButtons() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: LayoutUtil.isTablet(context)
            ? EdgeInsets.zero
            : EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.18),
        child: Wrap(
          children: [
            PowerButtonWidget(
              icon: Icons.light_mode_outlined,
              label: "On",
              isDayOn: isDayOn,
              onTap: _isDayOn,
            ),
            
          ],
        ),
      ),
    );
  }

  void _isDayOn() {
    setState(() {
      isDayOn = !isDayOn;
    });
  }

  
}
