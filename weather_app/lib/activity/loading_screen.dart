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

    // Fetch weather data
    weatherData = await instance.getData();

    // Check if weather data is available
    if (weatherData != null) {
      // Navigate to the home screen and pass weatherData as an argument
      Navigator.pushReplacementNamed(
        context,
        '/home',
        arguments: weatherData,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    // Start the app initialization process when the widget is created
    startApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Display a loading indicator while fetching data
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
