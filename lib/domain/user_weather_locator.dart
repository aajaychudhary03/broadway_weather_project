import 'package:broadway_weather_project/domain/user_location_service.dart';
import 'package:geolocator/geolocator.dart';

class GetCurrentLocation{
static Future<Position> getCurrentUserLocation(){
  return UserLocationService.determinePosition();
}
}