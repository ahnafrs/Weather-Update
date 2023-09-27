class WeatherData {
  final double temp;
  final int humidity;
  final double airSpeed;
  final String description;
  final String main;
  final int presurre;
  final double feelsLike;
  final String icon;

  WeatherData({
    required this.temp,
    required this.humidity,
    required this.airSpeed,
    required this.description,
    required this.main,
    required this.presurre,
    required this.feelsLike,
    required this.icon,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      temp: json['main']['temp'] - 273.15.toDouble(),
      humidity: json['main']['humidity'],
      airSpeed: json['wind']['speed'].toDouble(),
      description: json['weather'][0]['description'],
      main: json['weather'][0]['main'],
      presurre: json['main']['pressure'],
      feelsLike: json['main']['feels_like'] - 273.15.toDouble(),
      icon: json['weather'][0]['icon'],
    );
  }
}
