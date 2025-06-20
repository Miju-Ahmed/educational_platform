import 'package:educational_platform/constrants.dart';
import 'package:educational_platform/screen/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'SplashScreen';
  @override
  Widget build(BuildContext context) {

    //we use future to go from one screen to another via duration time
    Future.delayed(Duration(seconds: 5), (){
      //no return when user is on login screen and press back, it will not return the user to the splash screen  
      Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route) => false);
    });

    return Scaffold(
      //its a row with column
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Department',style: GoogleFonts.pattaya(
                    fontSize: 50.0,
                    fontStyle: FontStyle.italic,
                    color: kTextWhiteColor,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Data',style: GoogleFonts.pattaya(
                    fontSize: 50.0,
                    fontStyle: FontStyle.italic,
                    color: kTextWhiteColor,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Image.asset('assets/images/splash.png', height: 150.0, width: 150.0,)
          ],
        ),
      ),
    );
  }
}
