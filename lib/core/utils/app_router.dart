import 'package:bmi_bmr_calculator/feature/bmi_calculater/presentation/views/calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../feature/bmi_calculater/presentation/manger/bmi_cubit/bmi_cubit.dart';
import '../../feature/bmi_calculater/presentation/views/bmi_view.dart';
import '../../feature/bmi_calculater/presentation/views/bmi_view_result.dart';
import '../../feature/bmr_calculator/presentation/manger/bmr_cubit/bmr_cubit.dart';
import '../../feature/bmr_calculator/presentation/views/bmr_result.dart';
import '../../feature/bmr_calculator/presentation/views/bmr_view.dart';
abstract class AppRouter {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case '/bmi_result':
        return MaterialPageRoute(
          builder: (context) {
            final Map argument = settings.arguments as Map;
            return BlocProvider(
              create: (context) => BmiCubit(),
              child: BmiViewResult(
                result: argument["result"],
                feedback: argument["feedback"],
                bmi: argument["bmi"],
              ),
            );
          },
        );
      case '/bmi_view':
        return MaterialPageRoute(
          builder: (context) {
            return const BmiView();
          },
        );
      case '/calculator':
        return MaterialPageRoute(
          builder: (context) {
            return const Calculator();
          },
        );
      case '/bmr_view':
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider(
                create: (context) => BmrCubit(), child: const BmrView());
          },
        );
      case '/bmr_result':
        return MaterialPageRoute(builder: (context) {
          final Map argument = settings.arguments as Map;
          return BlocProvider(
            create: (context) => BmrCubit(),
            child: BmrViewResult(
              bmrResult: argument["bmr"],
              resultText: argument["result"],
              interpretation: argument["interpretation"],
            ),
          );
        });
    }
    return null;
  }
}
