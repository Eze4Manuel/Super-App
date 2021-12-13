import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trackhub/app/ui/pages/onboarding.dart';
import 'package:trackhub/app/ui/theme/app_strings.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.setMockInitialValues({});
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(GetMaterialApp(
    title: Strings.appName,
    debugShowCheckedModeBanner: false,
    // routes: Routes.routes,
    home: Onboarding(),
  )));
}