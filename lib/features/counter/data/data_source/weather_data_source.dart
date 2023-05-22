import 'package:broadway_weather_project/core/base/base_data_source.dart';
import 'package:broadway_weather_project/core/di/injetctable.dart';
import 'package:broadway_weather_project/core/utils/constants.dart';
import 'package:broadway_weather_project/features/counter/data/models/weather_card_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

//GetIt getIt = GetIt.instance;

/// data source where all the api calls are handled
@lazySingleton
class WeatherDataSource extends BaseRemoteSource {
  WeatherDataSource();
  //late final Dio? _dioClient;
  WeatherCardModel? weatherData;
  Future<WeatherCardModel> getWeather(String city) async {
    return networkHandler(
        request: (Dio dio) => dio.get(
            'https://api.openweathermap.org/data/2.5/weather?APPID=d1620a273527c62af41fc964f16ccb46&units=metric&q=$city&lang=en'),
        onResponse: (Map<String, dynamic> data) {
          return WeatherCardModel.fromJson(data);
        });
  }

  Future<WeatherCardModel> getWeatherFromLatLong(
      {required double lat, required double long}) {
    return networkHandler(
        request: (Dio dio) => dio.get(
            'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&appid=${WeatherConstants.key}'),
        onResponse: (data) =>
          WeatherCardModel.fromJson(data)

        );
  }
}
