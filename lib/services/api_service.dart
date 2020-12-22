import 'dart:convert';
import 'package:bloc_weather_example/screens/constants.dart';
import 'package:bloc_weather_example/model/weather.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future getWeather(String city) async {
    String requestUrl = baseUrl + city;
    http.Response response = await http.get(requestUrl);
    if (response.statusCode == 200) {
      var decodedData = jsonDecode(response.body);
      Weather _weather = Weather(
          temperature: decodedData['temperature'],
          yesterdayMax: decodedData['yesterdayMax'],
          yesterdayMin: decodedData['yesterdayMin'],
          todayMax: decodedData['todayMax'],
          todayMin: decodedData['todayMin']);
      return _weather;
    } else {
      print(response.statusCode);
    }
  }
}
