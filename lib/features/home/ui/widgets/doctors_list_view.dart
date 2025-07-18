import 'package:doctor_appotmnet/core/helper/spacing.dart';
import 'package:doctor_appotmnet/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
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
                          Text("Name", style: TextStyles.font18DarkBlueBold),
                          verticalSpace(5),
                          Text(
                            "Dr. John Doe",
                            style: TextStyles.font12GrayMedium,
                          ),
                          verticalSpace(5),
                          Text(
                            "Email@gmail.com",
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
        },
      ),
    );
  }
}
