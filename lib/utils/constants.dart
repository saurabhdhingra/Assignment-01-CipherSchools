import 'package:flutter/material.dart';

class SizeConfig {
  static getHeight(context) {
    return MediaQuery.of(context).size.height;
  }

  static getWidth(context) {
    return MediaQuery.of(context).size.width;
  }

  static getDevice(context) {
    if (MediaQuery.of(context).size.width > 600) {
      return false;
    } else {
      return true;
    }
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
      iconTheme: IconThemeData(color: Colors.white),
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Color.fromRGBO(53, 58, 66, 1),
      colorScheme: ColorScheme.dark()
          .copyWith(secondary: Colors.white, tertiary: Colors.grey[50]));
  static final lightTheme = ThemeData(
    iconTheme: IconThemeData(color: Colors.black),
    scaffoldBackgroundColor: Color.fromRGBO(243, 242, 247, 1),
    primaryColor: Colors.white,
    colorScheme: ColorScheme.light().copyWith(
        secondary: Colors.black, tertiary: const Color.fromRGBO(22, 24, 33, 1)),
  );
}
