import 'package:broadway_weather_project/features/counter/data/models/weather_card_model.dart';
import 'package:broadway_weather_project/features/counter/presentation/bloc/weather_cubit.dart';
import 'package:broadway_weather_project/features/counter/presentation/screen/result_screen.dart';
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
                  image:AssetImage('assets/images/cloud.jpg',
                  ),
                fit: BoxFit.cover,
              ),
              // gradient: LinearGradient(
              //     begin: Alignment.topCenter,
              //     end: Alignment.bottomCenter,
              //     stops: [0.1, 0.9],
              //     colors: [Colors.white, Colors.purple]),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 8,
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
                        )),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.amberAccent.withOpacity(0.5)),
                          margin: const EdgeInsets.symmetric(vertical: 25),
                          padding: const EdgeInsets.all(30),
                          child: const Text("Text"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.amberAccent.withOpacity(0.5)),
                          padding: const EdgeInsets.all(30),
                          child: const Text("Text"),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.amberAccent.withOpacity(0.5)),
                          margin: const EdgeInsets.fromLTRB(0, 20, 10, 0),
                          padding: const EdgeInsets.all(26),
                          height: 100,
                          child: const Text("Text"),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: Colors.amberAccent.withOpacity(0.5)),
                          margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          padding: const EdgeInsets.all(26),
                          height: 100,
                          child: const Text("Text"),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text("Made By Ajay Chaudhary"),
                        Text("Saptari Nepal"),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
