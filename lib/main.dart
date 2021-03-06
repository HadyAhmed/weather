import 'package:flutter/material.dart';
import 'package:weather/screens/city_screen.dart';
import 'package:weather/screens/loading_screen.dart';
import 'package:weather/screens/location_screen.dart';
import 'package:weather/utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: kHomeScreen,
      routes: {
        kHomeScreen: (context) => LoadingScreen(),
        kLocationScreen: (context) => LocationScreen(),
        kCityScreen: (context) => CityScreen(),
      },
    );
  }
}
