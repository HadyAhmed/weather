import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:weather/services/location.dart';
import 'package:weather/services/networking.dart';

class WeatherRepository {
  WeatherRepository({this.apiNetwork});

  final ApiNetwork apiNetwork;

  /// this method will fetch weather with specific coordination
  Future<dynamic> fetchLocationWeather() async {
    // getting current location :
    Position position = await LocationService().determinePosition();
    // getting current location weather data :
    return _fetchCurrentWeather(
        lat: position.latitude, lon: position.longitude);
  }

  Future<dynamic> _fetchCurrentWeather({double lat, double lon}) async {
    try {
      http.Response response =
          await http.get(apiNetwork.getLocationWeather(lat: lat, lon: lon));
      if (response.statusCode == 200) {
        return Future.value(response.body);
      } else {
        return Future.error(response.statusCode.toString());
      }
    } catch (e) {
      return Future.error('No Internet Connection');
    }
  }

  /// this method will fetch weather with city name
  Future<dynamic> fetchCityWeather({String cityName}) async {
    try {
      http.Response response =
          await http.get(apiNetwork.getCityWeather(cityName: cityName));
      if (response.statusCode == 200) {
        return Future.value(response.body);
      } else {
        return Future.error(response.statusCode.toString());
      }
    } catch (e) {
      return Future.error('No Internet Connection');
    }
  }
}
