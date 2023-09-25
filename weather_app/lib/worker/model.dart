class WeatherData {
  final double temp;
  final int humidity;
  final double airSpeed;
  final String description;
  final String main;

  WeatherData({
    required this.temp,
    required this.humidity,
    required this.airSpeed,
    required this.description,
    required this.main,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      temp: json['main']['temp'].toDouble(),
      humidity: json['main']['humidity'],
      airSpeed: json['wind']['speed'].toDouble(),
      description: json['weather'][0]['description'],
      main: json['weather'][0]['main'],
    );
  }
}
