import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intiqa_project/screens/registration/prefered_location.dart';
import 'package:intiqa_project/screens/registration/preferable.dart';
import 'package:intiqa_project/screens/registration/register.dart';
import 'package:intiqa_project/screens/registration/register2.dart';

import '../screens/otp/otp.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/RegisterScreen':
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case '/SecondRegisterScreen':
        return MaterialPageRoute(builder: (_) => RegisterSecondScreen());

      case '/OtpScreen':
        return MaterialPageRoute(builder: (_) => OtpScreen());
      case '/RegisterPreferable':
        return MaterialPageRoute(builder: (_) => RegisterPreferable());
      case '/PreferedLocation':
        return MaterialPageRoute(builder: (_) => PreferedLocation());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
