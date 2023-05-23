import 'package:broadway_weather_project/features/counter/data/models/weather_card_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:line_icons/line_icons.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key, required this.weatherCardModel})
      : super(key: key);
  final WeatherCardModel weatherCardModel;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  ///late final int? currentTime;
  String finalDateTime = '';
  String finalSunriseTime = '';
  String finasunsetTime = '';

  @override
  void initState() {
    super.initState();

    ///Updated Time
    final int? currentTime = widget.weatherCardModel.dt;
    DateTime _dateTime =
        DateTime.fromMillisecondsSinceEpoch(currentTime! * 1000);
    String temp = DateFormat('EEE,h:mm a').format(_dateTime);
    finalDateTime = temp;

    ///Sunrise Time
    final int? sunriseTime = widget.weatherCardModel.sys?.sunrise;
    DateTime sunriseDateTime =
        DateTime.fromMillisecondsSinceEpoch(sunriseTime! * 1000);
    String tempSunrise = DateFormat('h:mm a').format(sunriseDateTime);
    finalSunriseTime = tempSunrise;

    ///sunset Time
    final int? sunsetTime = widget.weatherCardModel.sys?.sunset;
    DateTime sunsetDateTime =
        DateTime.fromMillisecondsSinceEpoch(sunsetTime! * 1000);
    String tempSunset = DateFormat('h:mm a').format(sunsetDateTime);
    finasunsetTime = tempSunset;

    ///Icon code
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/cloud.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("${widget.weatherCardModel.name}",
                      style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w500,
                          color: Colors.lightGreenAccent)),
                  const SizedBox(width: 10),
                  Image.network(
                    'http://openweathermap.org/img/w/${widget.weatherCardModel.weather![0].icon}.png',
                    width: 130,
                    height: 130,
                    fit: BoxFit.fill,
                  ),
                  Text(
                    " ${widget.weatherCardModel.weather?[0].main}",
                    style: const TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  Text("Temp ${widget.weatherCardModel.main?.temp!.round()}°C",
                      style: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w500,
                          color: Colors.red)),
                  const SizedBox(width: 10),
                  Text(
                    'Updated Time:$finalDateTime',
                    style: const TextStyle(color: Colors.black),
                  ),
                  Text(
                    'Sunrise :$finalSunriseTime',
                    style: const TextStyle(color: Colors.black),
                  ),
                  Text(
                    'Sunset :$finasunsetTime',
                    style: const TextStyle(color: Colors.black),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Wind',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                  ),
                  Card(
                    color: Colors.deepPurple,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11)),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///   Text('Updated Time:$finalDateTime'),
                          ListTile(
                            leading: const Icon(
                              Icons.air,
                              color: Colors.blue,
                            ),
                            title: Text(
                                '${widget.weatherCardModel.wind!.speed} Speed Km/h'),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('Weather',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.black)),
                  ),
                  Card(
                    color: Colors.amber,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11)),
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: const Icon(
                              LineIcons.draftingCompass,
                              color: Colors.blue,
                            ),
                            title: Text(
                              'Humidity: ${widget.weatherCardModel.main!.humidity}%',
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 35),
                            ),
                          ),
                          ListTile(
                            leading: const Icon(
                              LineIcons.lowVision,
                              color: Colors.blue,
                            ),
                            title: Text(
                              'Visibility: ${widget.weatherCardModel.visibility}km',
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 35),
                            ),
                          ),
                          ListTile(
                            leading: const Icon(
                              LineIcons.pushed,
                              color: Colors.blue,
                            ),
                            title: Text(
                              'Pressure: ${widget.weatherCardModel.main!.pressure}hpa',
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 35),
                            ),
                          ),
                          ListTile(
                            leading: const Icon(
                              LineIcons.cloud,
                              color: Colors.blue,
                            ),
                            title: Text(
                              "Clouds : ${widget.weatherCardModel.weather?[0].main}",
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 35),
                            ),
                          ),
                        ],
                      ),
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
