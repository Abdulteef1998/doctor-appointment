import 'package:doctor_appotmnet/core/helper/spacing.dart';
import 'package:doctor_appotmnet/core/theming/colors.dart';
import 'package:doctor_appotmnet/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorSpecialtyListView extends StatelessWidget {
  const DoctorSpecialtyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundColor: ColorsManager.lightBlue,
                  child: SvgPicture.asset('assets/svg/general_speciality.svg'),
                ),
                verticalSpace(8),
                Text('Speciztion', style: TextStyles.font12BlueRegular),
              ],
            ),
          );
        },
      ),
    );
  }
}
