import 'package:doctor_appotmnet/core/helper/spacing.dart';
import 'package:doctor_appotmnet/features/home/logic/cubit/home_cubit.dart';
import 'package:doctor_appotmnet/features/home/logic/cubit/home_state.dart';
import 'package:doctor_appotmnet/features/home/ui/widgets/doctors_shimmer_loading.dart';
import 'package:doctor_appotmnet/features/home/ui/widgets/speciality_list_view.dart';
import 'package:doctor_appotmnet/features/home/ui/widgets/speciality_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return setupLoading();
          },
          specializationsSuccess: (specializationDataList) {
            var specializationsList = specializationDataList;
            return setupSuccess(specializationsList);
          },
          specializationsError: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  /// shimmer loading for specializations and doctors
  Widget setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          verticalSpace(8),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }

  Widget setupSuccess(specializationsList) {
    return SpecialityListView(
      specializationDataList: specializationsList ?? [],
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
