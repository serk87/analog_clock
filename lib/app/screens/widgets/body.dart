import 'package:analog_clock/app/screens/widgets/widgets.dart';
import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(children: [
          Text(
            'NewPort Beach, USA | PST',
            style: theme.textTheme.bodyText1,
          ),
          const TimeInHourAndMinute(),
          const Spacer(),
          const ClockAnalogWidget(),
          const Spacer(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                CountryCard(
                  country: 'New York, USA',
                  timeZone: '+3 HRS | EST',
                  iconSrc: 'assets/icons/liberty.svg',
                  time: '9:20',
                  period: 'AM',
                ),
                CountryCard(
                  country: 'Sydney, AU',
                  timeZone: '+19 HRS | AEST',
                  iconSrc: 'assets/icons/sydney.svg',
                  time: '1:20',
                  period: 'AM',
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
