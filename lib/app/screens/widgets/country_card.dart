import 'package:analog_clock/shared/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({
    Key? key,
    required this.country,
    required this.timeZone,
    required this.iconSrc,
    required this.time,
    required this.period,
  }) : super(key: key);
  final String country, timeZone, iconSrc, time, period;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(233),
        child: AspectRatio(
          aspectRatio: 1.32,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(20)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: theme.primaryIconTheme.color ?? Colors.white,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  country,
                  style: theme.textTheme.headline4?.copyWith(
                    fontSize: getProportionateScreenWidth(16),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(timeZone),
                const Spacer(),
                Row(
                  children: [
                    SvgPicture.asset(
                      iconSrc,
                      width: getProportionateScreenWidth(40),
                      colorFilter: ColorFilter.mode(
                        theme.accentIconTheme.color ?? Colors.grey,
                        BlendMode.srcIn,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      time,
                      style: theme.textTheme.headline4,
                    ),
                    RotatedBox(
                      quarterTurns: 3,
                      child: Text(period),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
