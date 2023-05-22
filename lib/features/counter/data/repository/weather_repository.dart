import 'package:broadway_weather_project/core/base/base_repository.dart';
import 'package:broadway_weather_project/features/counter/data/data_source/weather_data_source.dart';
import 'package:broadway_weather_project/features/counter/data/models/weather_card_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class WeatherRepository extends BaseRepository {

  WeatherRepository(this._weatherDataSource);

  late final WeatherDataSource _weatherDataSource;

Future<Either<String?, WeatherCardModel>> getWeather(String city)async{
 return handleNetworkCall<WeatherCardModel, WeatherCardModel>(
     apiCall: _weatherDataSource.getWeather(city), onSuccess: (data) =>data);


  }

  Future<Either<String?, WeatherCardModel>> getWeatherFromLatLong({required double lat, required double long}) {
  return handleNetworkCall(apiCall: _weatherDataSource.getWeatherFromLatLong(lat:lat,long:long), onSuccess: (data)=>data);
  }


}









// /// calls the appropriate datasource
// /// and its related method calls
// class WeatherRepository  {
// // getWeather(String? city){
// // }
//
//   WeatherRepository(this._weatherDataSource);
//
//   late final WeatherDataSource _weatherDataSource;
//
//   /// call[_weatherDataSource]methods using passing [url]
//   Future<List<WeatherCardModel>> getCurrentWeather({required String url})async{
//     return await _weatherDataSource.fetchCurrentWeather(currentWeather: url);
//   }
//
// }