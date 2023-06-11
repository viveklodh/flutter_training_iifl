import 'dart:convert';
import 'package:flutter_training_iifl/weather_api/weather_model.dart';
import 'package:http/http.dart';

class Repo {

  Future<WeatherModel?> getWeatherFromCity(String? city) async {

    var url =
        "https://api.openweathermap.org/data/2.5/weather?q=$city&APPID=43ea6baaad7663dc17637e22ee6f78f2";

    final response = await get(Uri.parse(url));

    var responseBody = response.body;

    if(response.statusCode == 200){

     var jsonBody = jsonDecode(responseBody);

      return WeatherModel.fromJson(jsonBody);

    }
    else {

      throw Exception();

    }

  }
}