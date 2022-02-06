import 'dart:convert';

import 'package:http/http.dart';

class WeatherService {
  static const BASE_URL = "http://dataservice.accuweather.com";
  static const API_KEY = "qRpBsmpDLe1kp0LFY3vgGTp2nXQo5QhY";
  static const LOCATION_KEY = "1148471";
  static const SERVICE_ID = "/currentconditions/v1/";
  static const URL =
      BASE_URL + SERVICE_ID + LOCATION_KEY + '?apikey=' + API_KEY;
  static final uri = Uri.parse(URL);

  Future<List<dynamic>> getCurrentConditions() async {
    Response response = await get(uri);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw "Error in retrieving current conditions";
    }
  }

  String weatherIcon(int weatherIcon) {
    final String iconURL = "https://developer.accuweather.com/weather-icons/" +
        weatherIcon.toString();
    return iconURL;
  }
}
