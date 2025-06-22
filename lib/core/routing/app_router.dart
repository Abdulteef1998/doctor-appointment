import 'package:doctor_appotmnet/core/routing/routes.dart';
import 'package:doctor_appotmnet/features/login/ui/login_screen.dart';
import 'package:doctor_appotmnet/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      // case Routes.signUpScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => getIt<SignupCubit>(),
      //       child: const SignupScreen(),
      //     ),
      //   );
      // case Routes.homeScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => HomeCubit(getIt())..getSpecializations(),
      //       child: const HomeScreen(),
      //     ),
      //   );
      default:
        return null;
    }
  }
}
