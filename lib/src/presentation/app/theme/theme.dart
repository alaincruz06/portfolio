import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/src/presentation/app/theme/colors.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: PortfolioColors.platinum,
  canvasColor: Colors.grey,
  cardColor: PortfolioColors.almostWhite,
  primaryColor: PortfolioColors.primaryColor,
  colorScheme: const ColorScheme(
    background: PortfolioColors.almostWhite,
    brightness: Brightness.light,
    error: PortfolioColors.redFlag,
    onBackground: PortfolioColors.pureGray,
    onError: PortfolioColors.redFlag,
    onPrimary: PortfolioColors.primaryColor,
    onSecondary: PortfolioColors.secondaryColor,
    onSurface: PortfolioColors.pureGray,
    primary: PortfolioColors.primaryColor,
    secondary: PortfolioColors.secondaryColor,
    surface: PortfolioColors.pureGray,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: PortfolioColors.secondaryColor,
    unselectedItemColor: Colors.grey,
    backgroundColor: Colors.white,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0.0,
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: PortfolioColors.platinum,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: PortfolioColors.black,
  canvasColor: PortfolioColors.grey,
  cardColor: PortfolioColors.pureGray,
  colorScheme: const ColorScheme(
    background: PortfolioColors.black,
    brightness: Brightness.dark,
    error: PortfolioColors.lightRed,
    onBackground: PortfolioColors.pureGray,
    onError: PortfolioColors.redFlag,
    onPrimary: PortfolioColors.primaryColor,
    onSecondary: PortfolioColors.secondaryColor,
    onSurface: PortfolioColors.pureGray,
    primary: PortfolioColors.primaryColor,
    secondary: PortfolioColors.secondaryColor,
    surface: PortfolioColors.pureGray,
  ),
  dividerColor: const Color(0xff545458),
  primaryColor: PortfolioColors.primaryColor,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: PortfolioColors.primaryColor,
    unselectedItemColor: Colors.grey,
    backgroundColor: PortfolioColors.pureGray,
    showUnselectedLabels: true,
    type: BottomNavigationBarType.fixed,
  ),
  appBarTheme: const AppBarTheme(
    elevation: 0.0,
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: PortfolioColors.black,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
);
