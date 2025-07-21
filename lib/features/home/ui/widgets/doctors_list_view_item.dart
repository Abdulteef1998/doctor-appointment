import 'package:doctor_appotmnet/core/helper/spacing.dart';
import 'package:doctor_appotmnet/core/theming/styles.dart';
import 'package:doctor_appotmnet/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListViewItem({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),

      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    "https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050",
                    width: 110.w,
                    height: 120.h,
                    fit: BoxFit.cover,
                  ),
                ),
                horizontalSpace(16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorsModel?.name ?? "Name",
                      style: TextStyles.font18DarkBlueBold,
                    ),
                    verticalSpace(5),
                    Text(
                      '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                      style: TextStyles.font12GrayMedium,
                    ),
                    verticalSpace(5),
                    Text(
                      doctorsModel?.email ?? "Email",
                      style: TextStyles.font12GrayMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
