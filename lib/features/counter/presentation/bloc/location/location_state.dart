part of 'location_cubit.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;

  const factory LocationState.loading() = _Loading;

  const factory LocationState.fetched(
      {required WeatherCardModel weatherCardModel}) = _Fetched;

  const factory LocationState.error({required String error}) = _Error;
}
