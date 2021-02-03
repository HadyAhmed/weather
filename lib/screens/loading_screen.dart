import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather/repository/weather_repo.dart';
import 'package:weather/screens/location_screen.dart';
import 'package:weather/services/networking.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getWeatherData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white10),
        constraints: BoxConstraints.expand(),
        child: Center(
          child: SpinKitWanderingCubes(size: 50, color: Colors.white),
        ),
      ),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  void getWeatherData() async {
    dynamic callBackend = await WeatherRepository(
      apiNetwork: ApiNetwork(),
    ).fetchLocationWeather();

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LocationScreen(
                  locationWeatherData: callBackend,
                )));
  }
}
