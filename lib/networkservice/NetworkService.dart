import 'package:weatherapp/model/WeatherDataModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkService {

  Future<WeatherDataModel> fetchWeatherDetails(String cityName) async {
    final response = await http.get(
        'http://api.openweathermap.org/data/2.5/weather?q=${cityName},pk&units=metric&APPID=0154ac07e7c0fc3b2556cc8e5da8ad48');

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      return WeatherDataModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

}