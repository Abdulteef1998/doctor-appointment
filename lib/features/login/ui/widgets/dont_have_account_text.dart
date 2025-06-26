import 'package:doctor_appotmnet/core/helper/extensions.dart';
import 'package:doctor_appotmnet/core/routing/routes.dart';
import 'package:doctor_appotmnet/core/theming/styles.dart';
import 'package:doctor_appotmnet/core/utils/const/app_string.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: AppStrings.donotHaveAccountText,
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: AppStrings.signUpTitle,
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
          ),
        ],
      ),
    );
  }
}
