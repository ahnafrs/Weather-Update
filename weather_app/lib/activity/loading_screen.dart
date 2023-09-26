import 'package:flutter/material.dart';
import 'package:weather_app/worker/model.dart';
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
        arguments: weatherData,
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
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
