import 'package:flutter/material.dart';
import 'package:weather_app/activity/homepage.dart';
import 'package:weather_app/worker/model.dart';
import 'package:weather_app/worker/worker.dart';
import 'package:weather_app/worker/worker_new.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  WeatherData? weatherData;

  Future<void> startApp() async {
    final instance = Worker(location: "Dhaka");
    weatherData = await instance.getData();

    if (weatherData != null) {
      Navigator.pushReplacementNamed(
        context,
        '/home',
        arguments: {
          "temp_value": weatherData!.temp.toStringAsFixed(2).toString(),
          "hum_value": weatherData!.humidity.toString(),
          "presurre_value": weatherData!.presurre.toString(),
          "air_speed_value": weatherData!.airSpeed.toString(),
          "des_value": weatherData!.description,
          "main_value": weatherData!.main,
          "feels_like_value":
              weatherData!.feelsLike.toStringAsFixed(2).toString(),
        },
      );
    }
  }

  @override
  void initState() {
    startApp();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child:
              CircularProgressIndicator()), // Show a loading indicator while fetching data.
    );
  }
}
