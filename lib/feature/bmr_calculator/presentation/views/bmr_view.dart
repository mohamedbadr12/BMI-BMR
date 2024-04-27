import 'package:bmi_bmr_calculator/feature/bmr_calculator/presentation/views/widgets/bmr_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/constant.dart';
import '../../../../core/utils/styles.dart';

class BmrView extends StatelessWidget {
  const BmrView({super.key});

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
        title: Text("BMR CALCULATOR",
            style: Styles.textStyle20(context).copyWith(
              fontWeight: FontWeight.bold,
            )),
      ),
      body: const BmrViewBody(),
    );
  }
}
