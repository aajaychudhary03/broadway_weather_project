import 'package:bloc/bloc.dart';
import 'package:broadway_weather_project/core/base/base_bloc.dart';
import 'package:broadway_weather_project/domain/user_weather_locator.dart';
import 'package:broadway_weather_project/features/counter/data/models/weather_card_model.dart';
import 'package:broadway_weather_project/features/counter/data/repository/weather_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'location_cubit.freezed.dart';
part 'location_state.dart';

@injectable
class LocationCubit extends Cubit<LocationState> with BaseBlocMixin {
  LocationCubit(this.weatherRepository) : super(const LocationState.initial());
  late final WeatherRepository weatherRepository;

  void getWeatherFromLatLong() {
    emit(const LocationState.loading());
    GetCurrentLocation.getCurrentUserLocation().then((value) async {
      return handleBlocData(
          response: await weatherRepository.getWeatherFromLatLong(
              lat: value.latitude, long: value.longitude),
          onData: (data) {
            emit(LocationState.fetched(weatherCardModel: data));
            print('locationData:${data}');
          },
          onFailure: (error) {
            emit(LocationState.error(error: error.toString()));
          });
    });
  }
}
