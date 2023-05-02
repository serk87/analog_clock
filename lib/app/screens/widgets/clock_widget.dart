import 'dart:async';
import 'dart:math';

import 'package:analog_clock/app/screens/widgets/widgets.dart';
import 'package:analog_clock/shared/providers/theme_provider.dart';
import 'package:analog_clock/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class ClockAnalogWidget extends StatefulWidget {
  const ClockAnalogWidget({Key? key}) : super(key: key);

  @override
  State<ClockAnalogWidget> createState() => _ClockAnalogWidgetState();
}

class _ClockAnalogWidgetState extends State<ClockAnalogWidget> {
  DateTime _dateTime = DateTime.now();
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _dateTime = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    color: SKColors.skShadowColor.withOpacity(0.14),
                    blurRadius: 64,
                  )
                ],
              ),
              child: Transform.rotate(
                angle: -pi / 2,
                child: CustomPaint(
                  painter: ClockPainter(context: context, dateTime: _dateTime),
                ),
              ),
            ),
          ),
        ),
        Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Consumer<ThemeProvider>(
              builder: (context, value, child) => GestureDetector(
                onTap: value.changeTheme,
                child: SvgPicture.asset(
                  value.isLightTheme ? 'assets/icons/sun.svg' : 'assets/icons/moon.svg',
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(theme.primaryColor, BlendMode.srcIn),
                ),
              ),
            ))
      ],
    );
  }
}
