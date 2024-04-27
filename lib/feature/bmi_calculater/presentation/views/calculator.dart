import 'package:bmi_bmr_calculator/feature/bmi_calculater/presentation/views/widgets/custom_container_choose_calculator.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constant.dart';
import '../../../../core/utils/styles.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,

        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient:
              LinearGradient(colors: [kPrimaryColor, kSecondaryColor])),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(" CALCULATOR",
            style: Styles.textStyle20(context).copyWith(
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.center,
              child: Text("CALCULATE YOUR BODY ",
                  style: Styles.textStyle28Bold(context))),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.center,
            child: Text("USING ?", style: Styles.textStyle28Bold(context)),
          ),
          const SizedBox(height: 80),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/bmi_view');
            },
            child: const CustomContainerChooseCalculator(
              text: "BMI",
            ),
          ),
          const SizedBox(height: 60),
          InkWell(onTap: () {
            Navigator.pushNamed(context, '/bmr_view');
      
          },
            child: const CustomContainerChooseCalculator(
              text: "BMR",
            ),
          ),
        ],
      ),
    );
  }
}

