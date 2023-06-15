import 'package:flutter/material.dart';
import 'package:intiqa_project/router/app_routing.dart';
import 'package:intiqa_project/screens/home/profile.dart';
import 'package:intiqa_project/screens/settings/about_us.dart';
import 'package:intiqa_project/screens/settings/contact_us.dart';
import 'package:intiqa_project/screens/settings/faq_help.dart';
import 'package:intiqa_project/screens/settings/settings.dart';
import 'package:intiqa_project/screens/otp/otp.dart';
import 'package:intiqa_project/screens/registration/prefered_location.dart';
import 'package:intiqa_project/screens/registration/register.dart';
import 'package:intiqa_project/screens/registration/register2.dart';
import 'package:intiqa_project/screens/registration/register_type.dart';
import 'package:intiqa_project/screens/registration/sucess.dart';
import 'package:intiqa_project/screens/settings/settings_in.dart';
import 'package:intiqa_project/utils/route_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SettingsScreen(),
      // initialRoute: RouteHelper.registerRoute,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
