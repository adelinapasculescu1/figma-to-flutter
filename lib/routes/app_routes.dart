import 'package:flutter/material.dart';
import 'package:adelina_s_application1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:adelina_s_application1/presentation/saved_recipes_screen/saved_recipes_screen.dart';
import 'package:adelina_s_application1/presentation/starting_screen/starting_screen.dart';
import 'package:adelina_s_application1/presentation/log_in_screen/log_in_screen.dart';
import 'package:adelina_s_application1/presentation/main_screen/main_screen.dart';
import 'package:adelina_s_application1/presentation/scan_products_screen/scan_products_screen.dart';
import 'package:adelina_s_application1/presentation/filter_recipes_screen/filter_recipes_screen.dart';
import 'package:adelina_s_application1/presentation/get_recipes_screen_two_screen/get_recipes_screen_two_screen.dart';
import 'package:adelina_s_application1/presentation/get_recipes_screen/get_recipes_screen.dart';
import 'package:adelina_s_application1/presentation/get_recipes_screen_one_screen/get_recipes_screen_one_screen.dart';
import 'package:adelina_s_application1/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:adelina_s_application1/presentation/profile_screen/profile_screen.dart';
import 'package:adelina_s_application1/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:adelina_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String signUpScreen = '/sign_up_screen';

  static const String savedRecipesScreen = '/saved_recipes_screen';

  static const String startingScreen = '/starting_screen';

  static const String logInScreen = '/log_in_screen';

  static const String mainScreen = '/main_screen';

  static const String scanProductsScreen = '/scan_products_screen';

  static const String filterRecipesScreen = '/filter_recipes_screen';

  static const String getRecipesScreenTwoScreen =
      '/get_recipes_screen_two_screen';

  static const String getRecipesScreen = '/get_recipes_screen';

  static const String getRecipesScreenOneScreen =
      '/get_recipes_screen_one_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String profileScreen = '/profile_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    signUpScreen: (context) => SignUpScreen(),
    savedRecipesScreen: (context) => SavedRecipesScreen(),
    startingScreen: (context) => StartingScreen(),
    logInScreen: (context) => LogInScreen(),
    mainScreen: (context) => MainScreen(),
    scanProductsScreen: (context) => ScanProductsScreen(),
    filterRecipesScreen: (context) => FilterRecipesScreen(),
    getRecipesScreenTwoScreen: (context) => GetRecipesScreenTwoScreen(),
    getRecipesScreen: (context) => GetRecipesScreen(),
    getRecipesScreenOneScreen: (context) => GetRecipesScreenOneScreen(),
    resetPasswordScreen: (context) => ResetPasswordScreen(),
    profileScreen: (context) => ProfileScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
