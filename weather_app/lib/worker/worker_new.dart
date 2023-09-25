import 'dart:convert';

import 'package:http/http.dart';
import 'package:weather_app/worker/model.dart';

class Worker {
  String? location;
  Worker({this.location});

  Future<WeatherData?> getData() async {
    try {
      Uri apiUrl = Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?q=Dhaka&APPID=4d75d9db25fb3a4289852a78eceec2c6");

      Response response = await get(apiUrl);

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        return WeatherData.fromJson(data);
      } else {
        throw Exception("Failed to fetch data");
      }
    } catch (e) {
      return null; // Return null or handle errors as needed.
    }
  }
}
