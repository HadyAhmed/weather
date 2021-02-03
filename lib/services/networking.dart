const String kApi = 'a628d4bc6b6fe19cd21e6bdb74322677';

class ApiNetwork {
  String getLocationWeather({double lat, double lon}) =>
      'https://api.openweathermap.org/data/2.5/weather?units=metric&lat=$lat&lon=$lon&appid=$kApi';

  String getCityWeather({String cityName}) =>
      'https://api.openweathermap.org/data/2.5/weather?q=$cityName&units=metric&appid=$kApi';
}
