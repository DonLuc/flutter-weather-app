import 'dart:ffi';

class Metric {
  final Double? value;
  final String? unit;
  final Double? unitType;

  Metric({this.value, this.unit, this.unitType});

  factory Metric.fromJson(dynamic json) {
    return Metric(
        value: json['Value'] as Double?,
        unit: json['Unit'] as String?,
        unitType: json["UnitType"] as Double?);
  }
}
