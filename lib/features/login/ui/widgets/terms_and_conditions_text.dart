import 'package:doctor_appotmnet/core/theming/styles.dart';
import 'package:doctor_appotmnet/core/utils/const/app_string.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: AppStrings.bylogging,
            style: TextStyles.font13GrayRegular,
          ),
          TextSpan(
            text: AppStrings.tearmsAndConditions,
            style: TextStyles.font13DarkBlueMedium,
          ),
          TextSpan(
            text: AppStrings.and,
            style: TextStyles.font13GrayRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: AppStrings.privacyPolicy,
            style: TextStyles.font13DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}
