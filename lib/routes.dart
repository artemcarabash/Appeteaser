import 'package:flutter/widgets.dart';
import 'package:appeteaser_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:appeteaser_app/screens/details/details_screen.dart';
import 'package:appeteaser_app/screens/home/home_screen.dart';
import 'package:appeteaser_app/screens/login_success/login_success_screen.dart';
import 'package:appeteaser_app/screens/otp/otp_screen.dart';
import 'package:appeteaser_app/screens/profile/profile_screen.dart';
import 'package:appeteaser_app/screens/qr_scanner/qr_scan_screen.dart';
import 'package:appeteaser_app/screens/splash/splash_screen.dart';

import 'screens/favourites/favourites_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  QRScanScreen.routeName: (context) => QRScanScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  FavouriteScreen.routeName: (context) => FavouriteScreen(),
};
