// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:broadway_weather_project/core/auto_route/router.dart' as _i3;
import 'package:broadway_weather_project/features/counter/data/data_source/weather_data_source.dart'
    as _i4;
import 'package:broadway_weather_project/features/counter/data/repository/weather_repository.dart'
    as _i5;
import 'package:broadway_weather_project/features/counter/presentation/bloc/location/location_cubit.dart'
    as _i6;
import 'package:broadway_weather_project/features/counter/presentation/bloc/weather_cubit.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
  gh.lazySingleton<_i4.WeatherDataSource>(() => _i4.WeatherDataSource());
  gh.lazySingleton<_i5.WeatherRepository>(
      () => _i5.WeatherRepository(gh<_i4.WeatherDataSource>()));
  gh.factory<_i6.LocationCubit>(
      () => _i6.LocationCubit(gh<_i5.WeatherRepository>()));
  gh.factory<_i7.WeatherCubit>(
      () => _i7.WeatherCubit(gh<_i5.WeatherRepository>()));
  return getIt;
}
