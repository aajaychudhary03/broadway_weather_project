// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:broadway_weather_project/features/counter/data/models/weather_card_model.dart'
    as _i7;
import 'package:broadway_weather_project/features/counter/presentation/screen/result_screen.dart'
    as _i1;
import 'package:broadway_weather_project/features/counter/presentation/screen/splash_screen.dart'
    as _i2;
import 'package:broadway_weather_project/features/counter/presentation/screen/user_location.dart'
    as _i3;
import 'package:broadway_weather_project/features/counter/presentation/screen/weather_home_screen.dart'
    as _i4;
import 'package:flutter/material.dart' as _i6;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    ResultRoute.name: (routeData) {
      final args = routeData.argsAs<ResultRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ResultScreen(
          key: args.key,
          weatherCardModel: args.weatherCardModel,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SplashScreen(),
      );
    },
    UserLocationRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.UserLocationScreen(),
      );
    },
    WeatherHomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.WeatherHomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.ResultScreen]
class ResultRoute extends _i5.PageRouteInfo<ResultRouteArgs> {
  ResultRoute({
    _i6.Key? key,
    required _i7.WeatherCardModel weatherCardModel,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          ResultRoute.name,
          args: ResultRouteArgs(
            key: key,
            weatherCardModel: weatherCardModel,
          ),
          initialChildren: children,
        );

  static const String name = 'ResultRoute';

  static const _i5.PageInfo<ResultRouteArgs> page =
      _i5.PageInfo<ResultRouteArgs>(name);
}

class ResultRouteArgs {
  const ResultRouteArgs({
    this.key,
    required this.weatherCardModel,
  });

  final _i6.Key? key;

  final _i7.WeatherCardModel weatherCardModel;

  @override
  String toString() {
    return 'ResultRouteArgs{key: $key, weatherCardModel: $weatherCardModel}';
  }
}

/// generated route for
/// [_i2.SplashScreen]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.UserLocationScreen]
class UserLocationRoute extends _i5.PageRouteInfo<void> {
  const UserLocationRoute({List<_i5.PageRouteInfo>? children})
      : super(
          UserLocationRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserLocationRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.WeatherHomeScreen]
class WeatherHomeRoute extends _i5.PageRouteInfo<void> {
  const WeatherHomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          WeatherHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WeatherHomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
