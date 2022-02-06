import 'package:weather_app/models/current_condition.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherRepository {
  Future<List<CurrentCondition>> getCurrentCondition() async {
    List<CurrentCondition> conditions = [];
    try {
      final List<dynamic> response =
          WeatherService().getCurrentConditions() as List<dynamic>;

      for (final Map<String, dynamic> item in response) {
        final CurrentCondition condition = CurrentCondition.fromMap(item);
        conditions.add(condition);
      }
    } catch (error) {
      throw ('Error in the repository');
    }
    return conditions;
  }
}
