import 'package:flutter/material.dart';
import 'screens/details/details_screen.dart';
import 'screens/main_screens.dart';
import 'screens/signin/signin_screen.dart';
import 'screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => SplashScreen(),
  MainScreens.routeName: (context) => MainScreens(),
  SignInScreen.routeName: (context) => SignInScreen(),
  // 1
  DetailsScreen.routeName: (context) => DetailsScreen()
};
