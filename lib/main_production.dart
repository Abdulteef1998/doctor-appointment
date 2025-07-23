import 'package:doctor_appotmnet/core/di/dependency_injection.dart';
import 'package:doctor_appotmnet/core/helper/constants.dart';
import 'package:doctor_appotmnet/core/helper/extensions.dart';
import 'package:doctor_appotmnet/core/helper/shared_pref_helper.dart';
import 'package:doctor_appotmnet/core/routing/app_router.dart';
import 'package:doctor_appotmnet/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  setUpGetIt();
  await ScreenUtil.ensureScreenSize();
  await checkIfLoggedInUser();
  runApp(DocApp(appRouter: AppRouter()));
}

checkIfLoggedInUser() async {
  String? userToken = await SharedPrefHelper.getSecuredString(
    SharedPrefKeys.userToken,
  );
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
