import 'package:broadway_weather_project/features/counter/data/models/weather_card_model.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key, required this.weatherCardModel})
      : super(key: key);
  final WeatherCardModel weatherCardModel;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.9],
                colors: [Colors.amberAccent, Colors.purple]),
          ),
        child: Center(
          child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "${widget.weatherCardModel.name}",
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Temp ${widget.weatherCardModel.main?.temp}°C",
                  style: const TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                Text(
                  "Pressure  ${widget.weatherCardModel.main?.pressure}hpa",
                  style: const TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                Text(
                  "Humidity  ${widget.weatherCardModel.main?.humidity}%",
                  style: const TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                Text(
                  "Clouds  ${widget.weatherCardModel.weather?[0].main}",
                  style: const TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                //     Text(
                //       "clouds  ${widget.weatherCardModel.weather?[1].description}",
                //       style: const TextStyle(color: Colors.red, fontSize: 20.0),
                // ),
              ]
          ),
        ),
      ),
      ),
    );
  }
}
