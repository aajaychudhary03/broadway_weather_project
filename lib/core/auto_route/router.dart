import 'package:auto_route/auto_route.dart';
import 'package:broadway_weather_project/core/auto_route/router.gr.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: '/'),
        AutoRoute(page: ResultRoute.page, path: '/resultRoute'),
        AutoRoute(page: WeatherHomeRoute.page, path: '/weatherHomeRoute'),
        AutoRoute(page: UserLocationRoute.page, path: '/resultRoute'),
      ];
}
