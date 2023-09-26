// import 'dart:convert';

// import 'package:http/http.dart';

// class worker {
//   String? location;
//   worker({this.location}) {
//     location = this.location;
//   }
//   String? temp;
//   String? humidity;
//   String? air_speed;
//   String? descripstion;
//   String? main;
//   Future<void> getData() async {
//     try {
//       Uri apiUrl = Uri.parse(
//           "https://api.openweathermap.org/data/2.5/weather?q=Dhaka&APPID=4d75d9db25fb3a4289852a78eceec2c6");

//       Response response = await get(apiUrl);

//       //Getting Temp,Humidity
//       Map data = jsonDecode(response.body);
//       Map temp_data = data['main'];
//       String getHumidity = temp_data['humidity'].toString();
//       double getTemp = temp_data['temp'];

//       //Getting Description

//       List weather_data = data['weather'];
//       Map weather_main_data = weather_data[0];
//       String getMain_des = weather_main_data['main'];
//       String getDesc = weather_main_data['description'];

//       //Getting air speed
//       Map wind = data['wind'];
//       double getAir_speed = wind['speed'];

//       //Assigning Values
//       temp = getTemp.toString();
//       humidity = getHumidity;
//       air_speed = getAir_speed.toString();
//       descripstion = getDesc;
//       main = getMain_des;
//     } catch (e) {
//       temp = "No Data";
//       humidity = "No Data";
//       air_speed = "No Data";
//       descripstion = "No Data";
//       main = "No Data";
//     }
//   }
// }


// arguments: 
// {
        //    "temp_value": weatherData!.temp.toStringAsFixed(2).toString(),
        //   "hum_value": weatherData!.humidity.toString(),
        //   "presurre_value": weatherData!.presurre.toString(),
        //   "air_speed_value": weatherData!.airSpeed.toString(),
        //   "des_value": weatherData!.description,
        //   "main_value": weatherData!.main,
        //   "feels_like_value":
        //       weatherData!.feelsLike.toStringAsFixed(2).toString(),
        //   "icon_value": weatherData!.icon,
        // },