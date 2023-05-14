import 'package:broadway_weather_project/features/counter/data/models/weather_card_model.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key, required this.weatherCardModel}) : super(key: key);
  final WeatherCardModel weatherCardModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "${weatherCardModel.name}",
                style: const TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "Temp ${weatherCardModel.main?.temp}°C",
                style:
                const TextStyle(color: Colors.red, fontSize: 20.0),
              ),
              Text(
                "Pressure  ${weatherCardModel.main?.pressure}",
                style:
                const TextStyle(color: Colors.red, fontSize: 20.0),
              ),
              Text(
                "Humidity  ${weatherCardModel.main?.humidity}",
                style:
                const TextStyle(color: Colors.red, fontSize: 20.0),
              ),
            ],
          ),
        )
    );
  }
}
