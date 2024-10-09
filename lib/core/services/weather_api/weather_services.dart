import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather/core/models/weather_model/WeatherModel.dart';

class WeatherService {
  final Dio dio = Dio();

  String apiKey = "fee25c97813442f58e2195947240108";
  String baseUrl = "http://api.weatherapi.com/v1";

  String? errMsg;
  Future<WeatherModel> getWeather(cityName) async {
    try {
      Response response = await dio.get(
          "$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=3&aqi=yes&alerts=yes");
      log(response.toString());

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      String? errMsg = e.response?.data['error']['message'];
      throw (errMsg ?? e);
    } catch (e) {
      rethrow;
    }
  }
}