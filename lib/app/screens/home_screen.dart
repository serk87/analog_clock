import 'package:analog_clock/app/screens/widgets/widgets.dart';
import 'package:analog_clock/shared/theme/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/settings.svg',
            colorFilter: ColorFilter.mode(theme.iconTheme.color ?? Colors.white, BlendMode.srcIn),
          ),
          onPressed: () {},
        ),
        actions: [buildAddButton(context)],
      ),
      body: BodyWidget(),
    );
  }

  Padding buildAddButton(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: getProportionateScreenWidth(32),
          decoration: BoxDecoration(
            color: theme.primaryColor,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
