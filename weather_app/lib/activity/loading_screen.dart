import 'package:flutter/material.dart';
import 'package:weather_app/activity/homepage.dart';
import 'package:weather_app/worker/worker.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void startApp() async {
    worker instance = worker(location: "Dhaka");
    await instance.getData();
    print(instance.air_speed);
    print(instance.descripstion);
    print(instance.humidity);
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
        child: TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Text("Go to HomePage")),
      ),
    );
  }
}
