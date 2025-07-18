import 'package:doctor_appotmnet/core/theming/colors.dart';
import 'package:doctor_appotmnet/core/theming/styles.dart';
import 'package:doctor_appotmnet/core/utils/const/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Omar!', style: TextStyles.font18DarkBlueBold),
            Text('How Are you Today?', style: TextStyles.font12GrayRegular),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.0,
          backgroundColor: ColorsManager.moreLighterGray,
          child: SvgPicture.asset(AppAssets.notificationAppBar),
        ),
      ],
    );
  }
}
