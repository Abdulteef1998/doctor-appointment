import 'package:doctor_appotmnet/core/helper/spacing.dart';
import 'package:doctor_appotmnet/features/home/ui/widgets/doctor_specialty_list_view.dart';
import 'package:doctor_appotmnet/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:doctor_appotmnet/features/home/ui/widgets/doctors_list_view.dart';
import 'package:doctor_appotmnet/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:doctor_appotmnet/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              verticalSpace(24),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(18),
              const DoctorSpecialtyListView(),
              verticalSpace(18),
              const DoctorsListView(),
            ],
          ),
        ),
      ),
    );
  }
}
