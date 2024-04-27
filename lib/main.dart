import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'core/utils/app_router.dart';
import 'core/utils/constant.dart';

void main() {
  runApp(DevicePreview(enabled: false,
    builder: (context) =>const BmiAndBmr() ,
    ));
}

class BmiAndBmr extends StatelessWidget {
  const BmiAndBmr({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: '/calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          drawerTheme: const DrawerThemeData(backgroundColor: Colors.white),
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.android: OpenUpwardsPageTransitionsBuilder()
          }),
          scaffoldBackgroundColor: kPrimaryColor),

    );
  }
}
