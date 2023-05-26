import 'package:auto_route/annotations.dart';
import 'package:broadway_weather_project/features/counter/data/models/weather_card_model.dart';
import 'package:broadway_weather_project/features/counter/presentation/bloc/location/location_cubit.dart';
import 'package:broadway_weather_project/features/counter/presentation/bloc/weather_cubit.dart';
import 'package:broadway_weather_project/features/counter/presentation/screen/result_screen.dart';
import 'package:broadway_weather_project/features/counter/presentation/screen/user_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class WeatherHomeScreen extends StatefulWidget {
  const WeatherHomeScreen({Key? key}) : super(key: key);

  @override
  State<WeatherHomeScreen> createState() => _WeatherHomeScreen();
}

class _WeatherHomeScreen extends State<WeatherHomeScreen> {
  late WeatherCubit _weatherCubit;
  final cityController = TextEditingController();
  WeatherCardModel? weatherCardModel;
  late LocationCubit locationCubit;

  @override
  void initState() {
    super.initState();
    _weatherCubit = context.read<WeatherCubit>();
    locationCubit = context.read<LocationCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<WeatherCubit, WeatherState>(
      listener: (context, state) {
        state.maybeWhen(
            orElse: () {},
            fetched: (data) {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ResultScreen(
                        weatherCardModel: data,
                      )));
            });
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/mt.jpg',
                ),
                fit: BoxFit.cover,
              ),
              // gradient: LinearGradient(
              //     begin: Alignment.topCenter,
              //     end: Alignment.bottomCenter,
              //     stops: [0.1, 0.9],
              //     colors: [Colors.white, Colors.purple]),
            ),
            // child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 8,
                  ),
                  InkWell(
                      onTap: () {
                        locationCubit.getWeatherFromLatLong();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const UserLocationScreen(),
                          ),
                        );
                      },
                      child: const Text('Find My Location')),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: cityController,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(
                      labelText: 'search',
                      labelStyle: TextStyle(color: Colors.black),
                      hintText: "Search Any City Name",
                      hintStyle: TextStyle(color: Colors.black),
                      prefix: Icon(
                        Icons.search,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black, style: BorderStyle.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        _weatherCubit
                            .fetchWeather(cityController.text)
                            .then((value) {});
                      },
                      child: const Text(
                        "Search",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // ),
      ),
    );
  }
}
