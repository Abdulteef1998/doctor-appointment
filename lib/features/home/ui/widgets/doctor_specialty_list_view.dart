import 'package:doctor_appotmnet/features/home/data/models/specializations_response_model.dart';
import 'package:doctor_appotmnet/features/home/ui/widgets/doctor_specialty_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialtyListView extends StatelessWidget {
  final List<SpecializationsData?> specializationsDataList;
  const DoctorSpecialtyListView({
    super.key,
    required this.specializationsDataList,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationsDataList.length,
        itemBuilder: (context, index) {
          return DoctorSpecialtyListViewItem(
            itemIndex: index,
            specializationData: specializationsDataList[index],
          );
        },
      ),
    );
  }
}
