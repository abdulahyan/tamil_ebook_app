import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:ebooks/config/app_config.dart' as config;
import 'package:ebooks/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:ebooks/services/service_locator.dart';

// void main() => runApp(MyApp());
void main() async {
  await setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        defaultBrightness: Brightness.dark,
        data: (brightness) {
          if (brightness == Brightness.light) {
            return ThemeData(
              fontFamily: 'Poppins',
              primaryColor: Colors.white,
              brightness: brightness,
              accentColor: config.Colors().mainColor(1),
              focusColor: config.Colors().accentColor(1),
              hintColor: config.Colors().secondColor(1),
              textTheme: TextTheme(
                headline1: TextStyle(fontSize: 20.0, color: config.Colors().secondColor(1)),
                headline2: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: config.Colors().secondColor(1)),
                headline3: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: config.Colors().secondColor(1)),
                headline4: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700, color: config.Colors().mainColor(1)),
                headline5: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w300, color: config.Colors().secondColor(1)),
                headline6: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: config.Colors().secondColor(1)),
                subtitle1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: config.Colors().mainColor(1)),
                subtitle2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: config.Colors().secondColor(1)),
                bodyText1: TextStyle(fontSize: 12.0, color: config.Colors().secondColor(1)),
                bodyText2: TextStyle(fontSize: 14.0, color: config.Colors().secondColor(1)),
                caption: TextStyle(fontSize: 12.0, color: config.Colors().accentColor(1)),
              ),
            );
          } else {
            return ThemeData(
              fontFamily: 'Poppins',
              primaryColor: Color(0xFF252525),
              brightness: Brightness.dark,
              scaffoldBackgroundColor: Color(0xFF2C2C2C),
              accentColor: config.Colors().mainDarkColor(1),
              hintColor: config.Colors().secondDarkColor(1),
              focusColor: config.Colors().accentDarkColor(1),
              textTheme: TextTheme(
                headline1: TextStyle(fontSize: 20.0, color: config.Colors().secondDarkColor(1)),
                headline2:
                    TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: config.Colors().secondDarkColor(1)),
                headline3:
                    TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: config.Colors().secondDarkColor(1)),
                headline4:
                    TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700, color: config.Colors().mainDarkColor(1)),
                headline5:
                    TextStyle(fontSize: 22.0, fontWeight: FontWeight.w300, color: config.Colors().secondDarkColor(1)),
                headline6:
                    TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: config.Colors().secondDarkColor(1)),
                subtitle1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: config.Colors().mainDarkColor(1)),
                subtitle2:
                    TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: config.Colors().secondDarkColor(1)),
                bodyText1: TextStyle(fontSize: 12.0, color: config.Colors().secondDarkColor(1)),
                bodyText2: TextStyle(fontSize: 14.0, color: config.Colors().secondDarkColor(1)),
                caption: TextStyle(fontSize: 12.0, color: config.Colors().secondDarkColor(0.6)),
              ),
            );
          }
        },
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
            title: 'E-Book',
            initialRoute: '/OnBoarding',
            onGenerateRoute: RouteGenerator.generateRoute,
            debugShowCheckedModeBanner: false,
            theme: theme,
          );
        });
  }
}
