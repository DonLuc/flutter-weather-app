import 'dart:ffi';

class Imperial {
  final Double? value;
  final String? unit;
  final Double? unitType;

  Imperial({this.value, this.unit, this.unitType});

  factory Imperial.fromJson(dynamic json) {
    return Imperial(
        value: json['Value'] as Double?,
        unit: json['Unit'] as String?,
        unitType: json["UnitType"] as Double?);
  }
}
