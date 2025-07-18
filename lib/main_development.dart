import 'package:doctor_appotmnet/core/di/dependency_injection.dart';
import 'package:doctor_appotmnet/core/routing/app_router.dart';
import 'package:doctor_appotmnet/doc_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'firebase_options_development.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  setUpGetIt();
  await ScreenUtil.ensureScreenSize();

  runApp(DocApp(appRouter: AppRouter()));
}
