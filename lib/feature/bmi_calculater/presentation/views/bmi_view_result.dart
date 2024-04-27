import 'package:bmi_bmr_calculator/feature/bmi_calculater/presentation/views/widgets/bmi_view_result_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constant.dart';
import '../../../../core/utils/styles.dart';

class BmiViewResult extends StatelessWidget {
  const BmiViewResult(
      {super.key,
      required this.bmi,
      required this.result,
      required this.feedback});

  final String? bmi;
  final String? result;
  final String? feedback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient:
                  LinearGradient(colors: [kPrimaryColor, kSecondaryColor])),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text("Result",
            style: Styles.textStyle20(context).copyWith(
              fontWeight: FontWeight.bold,
            )),
      ),
      body: BmiViewResultBody(bmi: bmi, result: result, feedback: feedback),
    );
  }
}
