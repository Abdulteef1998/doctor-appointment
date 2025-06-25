import 'package:doctor_appotmnet/core/helper/extensions.dart';
import 'package:doctor_appotmnet/core/routing/routes.dart';
import 'package:doctor_appotmnet/core/theming/colors.dart';
import 'package:doctor_appotmnet/core/theming/styles.dart';
import 'package:doctor_appotmnet/core/utils/const/app_string.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(Size(double.infinity, 52)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),

      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      child: Text(
        AppStrings.getStartedButtonTitle,
        style: TextStyles.font16WhiteSemiBold,
      ),
    );
  }
}
