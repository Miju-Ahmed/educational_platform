import 'package:educational_platform/screen/assignment_screen/assignment_screen.dart';
import 'package:educational_platform/screen/datasheet_screen/datasheet_screen.dart';
import 'package:educational_platform/screen/fee_screen/fee_screen.dart';
import 'package:educational_platform/screen/home_screen/home_screen.dart';
import 'package:educational_platform/screen/login_screen/login_screen.dart';
import 'package:educational_platform/screen/my_profile/my_profile.dart';
import 'package:educational_platform/screen/result_screen/result_screen.dart';
import 'package:educational_platform/screen/splash_screen/splash_screen.dart';
import 'package:flutter/widgets.dart';

Map<String, WidgetBuilder> routes = {
  //all screens will be registered here like manifest in android
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  MyProfileScreen.routeName: (context) => MyProfileScreen(),
  FeeScreen.routeName: (context) => FeeScreen(),
  AssignmentScreen.routeName: (context) => AssignmentScreen(),
  DataSheetScreen.routeName: (context) => DataSheetScreen(),
  ResultScreen.routeName:(context) => ResultScreen(),
};
