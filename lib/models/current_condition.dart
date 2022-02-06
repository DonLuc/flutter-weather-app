import 'package:weather_app/models/temperature.dart';

class CurrentCondition {
  final String? localObservationDateTime;
  final String? epochTime;
  final String? weatherText;
  final int? weatherIcon;
  final bool? hasPrecipitation;
  final String? precipitationType;
  final bool? isDayTime;
  final Temperature? temperature;

  CurrentCondition(
      {this.localObservationDateTime,
      this.epochTime,
      this.weatherText,
      this.weatherIcon,
      this.hasPrecipitation = false,
      this.precipitationType,
      this.isDayTime,
      this.temperature});

  factory CurrentCondition.fromMap(Map<dynamic, dynamic> map) {
    return CurrentCondition(
        localObservationDateTime: map["LocalObservationDateTime"] as String,
        epochTime: map["epochTime"] as String,
        weatherText: map["weatherText"] as String,
        weatherIcon: map["WeatherIcon"],
        hasPrecipitation: ["hasPrecipitation"] as bool,
        isDayTime: map["IsDayTime"] as bool,
        temperature: map["Temperature"] as Temperature);
  }
}
