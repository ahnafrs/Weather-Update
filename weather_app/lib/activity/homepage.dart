import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void getData() async {
    Uri apiUrl = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=Dhaka&APPID=4d75d9db25fb3a4289852a78eceec2c6");

    Response response = await get(apiUrl);
    Map data = jsonDecode(response.body);
    Map temp_data = data['main'];
    double temp = temp_data['temp'];
    List weather_data = data['weather'];
    Map weather_main_data = weather_data[0];
    int weather_id = weather_main_data['id'];
    print(temp);
    print(weather_data);
    print(weather_main_data);
    print(weather_id);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("This is HomePage")),
    );
  }
}
