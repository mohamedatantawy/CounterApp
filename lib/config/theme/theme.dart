import 'package:counterapp2/core/constant/constant.dart';
import 'package:flutter/material.dart';

class AppTheme {
  ThemeData themelight = ThemeData(
    colorScheme:const ColorScheme(brightness: Brightness.light
    , primary: kpirameycolor, 
    onPrimary: kpirameycolor,
     secondary: const Color.fromRGBO(13, 71, 161, 1),
      onSecondary:const Color.fromRGBO(13, 71, 161, 1),
       error: Colors.red,
        onError: Colors.red,
         surface: Colors.white,
          onSurface: Colors.black,),
    scaffoldBackgroundColor: Colors.green,

    appBarTheme:const AppBarTheme(
      backgroundColor:kpirameycolor,
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        )
      )
    )
  );
   ThemeData themedark = ThemeData(
    colorScheme:const ColorScheme(brightness: Brightness.dark
    , primary: Color.fromARGB(255, 255, 229, 82), 
    onPrimary:Color.fromARGB(255, 255, 229, 82),
     secondary:Colors.blueAccent,
      onSecondary:Colors.blueAccent,
       error: Colors.red,
        onError: Colors.red,
         surface: Colors.white,
          onSurface: Colors.black,),
    scaffoldBackgroundColor: Colors.green,

    appBarTheme:const AppBarTheme(
      backgroundColor:Colors.black,
      centerTitle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
          topLeft: Radius.circular(12),
        )
      )
    )
  );
}
