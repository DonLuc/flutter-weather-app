import 'package:weather_app/models/Imperial.dart';
import 'package:weather_app/models/metric.dart';

class Temperature {
  final Metric? metric;
  final Imperial? imperial;

  Temperature({this.metric, this.imperial});

  factory Temperature.fromMap(Map<String, dynamic> map) {
    return Temperature(
        metric: map['Metric'] as Metric?,
        imperial: map['Imperial'] as Imperial?);
  }
}
