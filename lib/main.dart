import 'package:doctor_appotmnet/core/di/dependency_injection.dart';
import 'package:doctor_appotmnet/core/routing/app_router.dart';
import 'package:doctor_appotmnet/doc_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
