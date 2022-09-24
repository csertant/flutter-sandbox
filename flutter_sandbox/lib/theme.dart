import 'package:flutter/material.dart';

///Light theme színek
const Color sandboxAmour = Color(0xfffefbfc);
const Color sandboxLavenderBlush = Color(0xfffefafb);
const Color sandboxMonarch = Color(0xff990e35);
const Color sandboxTarawera = Color(0xff094757);
const Color sandboxShiraz = Color(0xffbb1141);

///Dark theme színek
const Color sandboxDaintree = Color(0xff002b36);
const Color sandboxEden = Color(0xff0d3d48);
const Color sandboxSilver = Color(0xffbdbdbd);
const Color sandboxMalibu = Color(0xff41dfff);
const Color sandboxSilverChalice = Color(0xffb1b1b1);

///Közös színek
const Color sandboxHippieBlue = Color(0xff59a3b0);
const Color sandboxGunSmoke = Color(0xff888989);

TextTheme sandboxTextTheme = const TextTheme(
  ///Used for emphasizing text that would otherwise be bodyText2.
  ///Nunito, Semi-bold, 18 pt
  bodyText1: TextStyle(
      fontFamily: 'Nunito', fontSize: 18, fontWeight: FontWeight.w600),

  ///The default text style for Material.
  ///Nunito, Semi-bold, Italic, 18 pt
  bodyText2: TextStyle(
      fontFamily: 'Nunito',
      fontSize: 18,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.italic),

  ///Used for text on ElevatedButton, TextButton and OutlinedButton.
  ///Montserrat, 18 pt
  button: TextStyle(fontFamily: 'Montserrat', fontSize: 18),

  ///Used for auxiliary text associated with images.
  ///Nunito, italic, 14 pt
  caption: TextStyle(
      fontFamily: 'Nunito', fontSize: 14, fontStyle: FontStyle.italic),

  ///Extremely large text.
  ///Montserrat, 18 pt
  headline1: TextStyle(fontFamily: 'Montserrat', fontSize: 18),

  ///Very, very large text.
  ///Used for the date in the dialog shown by showDatePicker.
  ///Montserrat, Semi-bold, 18 pt
  headline2: TextStyle(
      fontFamily: 'Montserrat', fontSize: 25, fontWeight: FontWeight.w600),

  ///Very large text.
  ///Montserrat, Semi-bold, 18 pt
  headline3: TextStyle(
      fontFamily: 'Montserrat', fontSize: 18, fontWeight: FontWeight.w600),

  ///Large text.
  ///Montserrat, Extra-bold, 18 pt
  headline4: TextStyle(
      fontFamily: 'Montserrat', fontSize: 18, fontWeight: FontWeight.w800),

  ///Used for large text in dialogs
  ///(e.g., the month and year in the dialog shown by showDatePicker).
  ///Nunito, Black, 18 pt
  headline5: TextStyle(
      fontFamily: 'Nunito', fontSize: 18, fontWeight: FontWeight.w900),

  ///Used for the primary text in app bars and dialogs
  ///(e.g., AppBar.title and AlertDialog.title).
  ///Montserrat, 18 pt
  headline6: TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 18,
  ),

  ///The smallest style. [...]
  ///Montserrat, 14 pt
  overline: TextStyle(fontFamily: 'Montserrat', fontSize: 12),

  ///Used for the primary text in lists (e.g., ListTile.title).
  ///Montserrat, 14 pt
  subtitle1: TextStyle(fontFamily: 'Montserrat', fontSize: 14),

  ///For medium emphasis text thats a little smaller than subtitle1.
  ///Montserrat, 14 pt
  subtitle2: TextStyle(fontFamily: 'Montserrat', fontSize: 14),
);

const sandboxLightColorScheme = ColorScheme(
  primary: sandboxHippieBlue,
  primaryContainer: sandboxTarawera,
  secondary: sandboxMonarch,
  secondaryContainer: sandboxGunSmoke,
  surface: sandboxLavenderBlush,
  background: sandboxAmour,
  error: Color(0xffc80000),
  onPrimary: sandboxAmour,
  onSecondary: sandboxAmour,
  onSurface: sandboxTarawera,
  onBackground: sandboxTarawera,
  onError: sandboxAmour,
  brightness: Brightness.light,
);

ThemeData sandboxLightThemeData = ThemeData(
  brightness: Brightness.light,
  //visualDensity: null,
  //primarySwatch: null,
  primaryColor: sandboxHippieBlue,
  primaryColorLight: null,
  primaryColorDark: sandboxTarawera,
  //canvasColor: null,
  //shadowColor: null,
  scaffoldBackgroundColor: sandboxAmour,
  bottomAppBarColor: sandboxHippieBlue,
  //cardColor: null,
  dividerColor: sandboxTarawera,
  //focusColor: null,
  //hoverColor: null,
  //highlightColor: null,
  //splashColor: null,
  //splashFactory: null,
  //selectedRowColor: null,
  //unselectedWidgetColor: null,
  //disabledColor: null,
  //buttonTheme: null,
  //toggleButtonsTheme: null,
  //secondaryHeaderColor: null,
  //backgroundColor: sandboxAmour,
  //dialogBackgroundColor: null,
  //indicatorColor: null,
  //hintColor: null,
  errorColor: const Color(0xffe80000),
  //toggleableActiveColor: null,
  //fontFamily: null,
  textTheme: sandboxTextTheme,
  //primaryTextTheme: null,
  //inputDecorationTheme: null,
  //iconTheme: null,
  //primaryIconTheme: null,
  //sliderTheme: null,
  //tabBarTheme: null,
  //tooltipTheme: null,
  //cardTheme: null,
  //chipTheme: null,
  //platform: null,
  //materialTapTargetSize: null,
  //applyElevationOverlayColor: null,
  //pageTransitionsTheme: null,
  //appBarTheme: null,
  //scrollbarTheme: null,
  //bottomAppBarTheme: null,
  colorScheme: sandboxLightColorScheme,
  //dialogTheme: null,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
      foregroundColor: sandboxAmour,
      backgroundColor: sandboxMonarch,
      elevation: 10,
      splashColor: sandboxShiraz),
  //navigationRailTheme: null,
  //typography: null,
  //cupertinoOverrideTheme: null,
  //snackBarTheme: null,
  //bottomSheetTheme: null,
  //popupMenuTheme: null,
  //bannerTheme: null,
  //dividerTheme: null,
  //buttonBarTheme: null,
  //bottomNavigationBarTheme: null,
  timePickerTheme: TimePickerThemeData(
    backgroundColor: sandboxAmour,
    dayPeriodColor: sandboxHippieBlue,
    dayPeriodTextColor: sandboxAmour,
    dialBackgroundColor: sandboxTarawera,
    dialHandColor: sandboxHippieBlue,
    dialTextColor: sandboxAmour,
    entryModeIconColor: sandboxGunSmoke,
    hourMinuteColor: sandboxHippieBlue,
    hourMinuteTextColor: sandboxAmour,
    hourMinuteTextStyle: sandboxTextTheme.bodyText1!
        .copyWith(fontSize: 46, fontStyle: FontStyle.normal),
    hourMinuteShape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    helpTextStyle: sandboxTextTheme.bodyText1!.copyWith(
        fontSize: 14, fontStyle: FontStyle.normal, color: sandboxGunSmoke),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
  ),
  //textButtonTheme: null,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: sandboxLightColorScheme.primary,
      foregroundColor: sandboxLightColorScheme.background,
      shape: StadiumBorder(
        side: BorderSide(color: sandboxLightColorScheme.primary),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: sandboxLightColorScheme.background,
      backgroundColor: sandboxLightColorScheme.background.withOpacity(0.2),
      shape: StadiumBorder(
        side: BorderSide(color: sandboxLightColorScheme.background),
      ),
    ),
  ),
  //textSelectionTheme: null,
  //dataTableTheme: null,
  //checkboxTheme: null,
  //radioTheme: null,
  //switchTheme: null,
);
