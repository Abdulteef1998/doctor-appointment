import 'package:doctor_appotmnet/core/helper/spacing.dart';
import 'package:doctor_appotmnet/core/theming/colors.dart';
import 'package:doctor_appotmnet/core/theming/styles.dart';
import 'package:doctor_appotmnet/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialtyListViewItem extends StatelessWidget {
  final SpecializationsData? specializationData;
  final int itemIndex;
  const DoctorSpecialtyListViewItem({
    super.key,
    this.specializationData,
    required this.itemIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
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
  }
}
