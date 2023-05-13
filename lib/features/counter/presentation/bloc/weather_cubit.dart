import 'package:broadway_weather_project/core/base/base_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:broadway_weather_project/features/counter/data/models/weather_card_model.dart';
import 'package:broadway_weather_project/features/counter/data/repository/weather_repository.dart';
import 'package:injectable/injectable.dart';

part 'weather_cubit.freezed.dart';
part 'weather_state.dart';

@injectable
class WeatherCubit extends Cubit<WeatherState> with BaseBlocMixin {
  WeatherCubit(this._weatherRepository) : super(const WeatherState.initial());

  late final WeatherRepository _weatherRepository;

  Future<void> fetchWeather(String city) async {
    emit(const WeatherState.initial());
    handleBlocData<WeatherCardModel>(
        response: await _weatherRepository.getWeather(city),
        onData: (data) {
          emit(WeatherState.fetched(weatherCardModel: data));
        },
        onFailure: (String? error) {
          emit(WeatherState.failed(message: error!));
        });
  }
}
