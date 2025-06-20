import 'package:educational_platform/constrants.dart';
import 'package:educational_platform/routes.dart';
import 'package:educational_platform/screen/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Department Data',
      //we will use light theme for our app
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          primaryColor: kPrimaryColor,
          appBarTheme: AppBarTheme(
            color: kPrimaryColor,
            elevation: 0,
          ),
          //use google fonts for our app, we will use latoTextTheme
          textTheme: GoogleFonts.latoTextTheme(
            Theme.of(context).textTheme.apply().copyWith(
                  //customs text for bodyMedium
                  bodyLarge: const TextStyle(
                      color: kTextWhiteColor,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold),
                  bodyMedium: const TextStyle(
                    color: kTextWhiteColor,
                    fontSize: 28.0,
                  ),
                  titleLarge: const TextStyle(
                      color: kTextWhiteColor,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500),
                  titleMedium: const TextStyle(
                      color: kTextWhiteColor,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w300),
                ),
          ),

          //input decoration theme for all our the app
          inputDecorationTheme: const InputDecorationTheme(
            //label style for formField
            labelStyle: TextStyle(
              fontSize: 15.0,
              color: kTextLightColor,
              height: 0.5,
            ),
            //hint style
            hintStyle: TextStyle(
              fontSize: 16.0,
              color: kTextBlackColor,
              height: 0.5,
            ),
            //we are using underline input border not outline
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: kTextLightColor, width: 0.7),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kTextLightColor,
              ),
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kTextLightColor,
              ),
            ),
            //on focus change color
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kPrimaryColor,
              ),
            ),
            //color change when user enters wrong information
            //we will use validators for this process
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kErrorBorderColor,
                width: 1.2,
              ),
            ),
            //same on focuse error color
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kErrorBorderColor,
                width: 1.2,
              ),
            ),
          )),

      //initial route is splash screen mean first screen
      initialRoute: SplashScreen.routeName,
      //define the routes file here in order to access the routes any where all over
      routes: routes,
    );
  }
}
