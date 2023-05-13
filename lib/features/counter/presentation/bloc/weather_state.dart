part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _Initial;
    const factory WeatherState.notSearched() = _NotSearched;

  const factory WeatherState.fetched(
      {required WeatherCardModel weatherCardModel}) = _Fetched;
  const factory WeatherState.failed(
      {required String  message}) = _Failed;
}
