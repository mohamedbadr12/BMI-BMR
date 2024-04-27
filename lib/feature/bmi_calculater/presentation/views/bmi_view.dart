import 'package:bmi_bmr_calculator/feature/bmi_calculater/presentation/views/widgets/bmi_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/constant.dart';
import '../../../../core/utils/styles.dart';
import '../manger/bmi_cubit/bmi_cubit.dart';

class BmiView extends StatelessWidget {
  const BmiView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BmiCubit(),
      child: Scaffold(
        appBar: AppBar(

          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient:
                    LinearGradient(colors: [kPrimaryColor, kSecondaryColor])),
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: Text("BMI CALCULATOR",
              style: Styles.textStyle20(context).copyWith(
                fontWeight: FontWeight.bold,
              )),
        ),
        body: const BmiViewBody(),
      ),
    );
  }
}
