class Weather {
  final String cityName;
  final double temperature;
  final String condition;
  final String description;
  final int humidity;
  final double windSpeed;

  Weather({
    //Constructor: Initialize all fields
   required this.cityName,
   required this.temperature,
   required this.condition,
   required this.description,
   required this.humidity,
   required this.windSpeed,
});


  // Special constructor create Json Map
  factory Weather.fromJson(Map<String, dynamic> json){
    return Weather(
      cityName: json['name'] ?? 'Unknown', // get 'name' from json if null use 'unknown'
      temperature: (json['main']['temp'] ?? 0).toDouble(), // extract temp convert to double type
      condition: json['weather'][0]['main'] ?? 'Unknown',
      description: json['weather'][0]['description'] ?? 'Unknown',
      humidity: json['main']['humidity'] ?? 0,
      windSpeed: (json ['wind']['speed'] ?? 0).toDouble(),
    );
  }
}