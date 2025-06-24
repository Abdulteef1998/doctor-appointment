import 'package:doctor_appotmnet/core/theming/styles.dart';
import 'package:doctor_appotmnet/core/utils/const/app_assets.dart';
import 'package:doctor_appotmnet/core/utils/const/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppAssets.onBoardingLogo),
        SizedBox(width: 10.w),
        Text(AppStrings.docdocTitle, style: TextStyles.font24BlackBold),
      ],
    );
  }
}
