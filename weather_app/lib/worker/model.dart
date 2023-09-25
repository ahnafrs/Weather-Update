class WeatherData {
  final double temp;
  final int humidity;
  final double airSpeed;
  final String description;
  final String main;
  final int presurre;
  final double feelsLike;

  WeatherData({
    required this.temp,
    required this.humidity,
    required this.airSpeed,
    required this.description,
    required this.main,
    required this.presurre,
    required this.feelsLike,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    //   final tempInKelvin = json['main']['temp'].toDouble();
    // final tempInCelsius = (tempInKelvin - 273.15).toStringAsFixed(2);
    // final temp = json['main']['temp'].toDouble() - 273.15.toStringAsFixed(2);
    return WeatherData(
      temp: json['main']['temp'].toDouble() - 273.15,
      humidity: json['main']['humidity'],
      airSpeed: json['wind']['speed'].toDouble(),
      description: json['weather'][0]['description'],
      main: json['weather'][0]['main'],
      presurre: json['main']['pressure'],
      feelsLike: json['main']['feels_like'].toDouble() - 273.15,
    );
  }
}
