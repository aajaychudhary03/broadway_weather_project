import 'package:broadway_weather_project/features/counter/data/models/weather_card_model.dart';
import 'package:broadway_weather_project/features/counter/presentation/bloc/weather_cubit.dart';
import 'package:floating_snackbar/floating_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherHomeScreen extends StatefulWidget {
  const WeatherHomeScreen({Key? key}) : super(key: key);

  @override
  State<WeatherHomeScreen> createState() => _WeatherHomeScreen();
}

class _WeatherHomeScreen extends State<WeatherHomeScreen> {
  late WeatherCubit _weatherCubit;
  final cityController = TextEditingController();
  WeatherCardModel? weatherCardModel;
  @override
  void initState() {
    super.initState();
    _weatherCubit = context.read<WeatherCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.indigoAccent,
        child: Center(
          child: BlocConsumer<WeatherCubit, WeatherState>(
            bloc: _weatherCubit,
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                failed: (error) {
                  FloatingSnackBar(
                    message: error,
                    context: context,
                    textColor: Colors.white,
                    backgroundColor: Colors.red,
                    textStyle: const TextStyle(color: Colors.white),
                    duration: const Duration(milliseconds: 4000),
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          controller: cityController,
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            _weatherCubit.fetchWeather(cityController.text);
                          },
                          child: const Text("search")),
                    ],
                  );
                },
                fetched: (weatherCardModel) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${weatherCardModel.name}",
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text("temp ${weatherCardModel.main?.temp }"),
                      Text("Pressure temp ${weatherCardModel.main?.pressure}"),
                      Text("Humidity temp ${weatherCardModel.main?.humidity}"),

                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
