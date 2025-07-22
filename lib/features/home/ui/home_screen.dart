import 'package:doctor_appotmnet/core/helper/spacing.dart';
import 'package:doctor_appotmnet/features/home/data/models/specializations_response_model.dart';
import 'package:doctor_appotmnet/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:doctor_appotmnet/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:doctor_appotmnet/features/home/ui/widgets/home_top_bar.dart';
import 'package:doctor_appotmnet/features/home/ui/widgets/specializations_and_doctors_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  final SpecializationsResponseModel? specializationsResponseModel;
  const HomeScreen({super.key, this.specializationsResponseModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,

          margin: const EdgeInsets.fromLTRB(20, 16, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24.h),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(18),
              SpecializationsAndDoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
