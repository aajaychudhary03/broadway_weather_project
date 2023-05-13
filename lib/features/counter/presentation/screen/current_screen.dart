// import 'package:broadway_weather_project/features/counter/data/models/weather_card_model.dart';
// import 'package:flutter/material.dart';
// import 'package:broadway_weather_project/features/counter/data/repository/weather_repository.dart';
// import 'package:broadway_weather_project/features/counter/presentation/screen/weather_home_screen.dart';
//
// class CurrentWeather extends StatelessWidget {
//  final  WeatherCardModel weatherCardModel;
//   final String cityName;
//
//
//   const CurrentWeather({
//     super .key,
//    required this.weatherCardModel,
//    required this.cityName}) ;
//
//   @override
//   Widget build(BuildContext context) {
//    return SafeArea(
//     child: Scaffold(
//      backgroundColor: Colors.black38,
//      body: Container(
//          padding: const EdgeInsets.only(right: 32, left: 32, top: 10),
//          child: Column(children: <Widget>[
//           Text(
//            cityName,
//            style: const TextStyle(
//                color: Colors.white70,
//                fontSize: 30,
//                fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(
//            height: 10,
//           ),
//           Text(
//            "${weatherCardModel.main?.temp}C",
//            style: const TextStyle(color: Colors.white70, fontSize: 50),
//           ),
//           const Text(
//            "Temprature",
//            style: TextStyle(color: Colors.white70, fontSize: 14),
//           ),
//           Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget>[
//             Column(
//              children: <Widget>[
//               Text(
//                "${weatherCardModel.main?.tempMax}C",
//                style: const TextStyle(
//                    color: Colors.white70, fontSize: 30),
//               ),
//               const Text(
//                "Min Temprature",
//                style: TextStyle(color: Colors.white70, fontSize: 14),
//               ),
//              ],
//             ),
//             Column(
//              children: <Widget>[
//               Text(
//                "${weatherCardModel.main?.tempMin}C",
//                style: const TextStyle(
//                    color: Colors.white70, fontSize: 30),
//               ),
//               const Text(
//                "Max Temperature",
//                style: TextStyle(color: Colors.white70, fontSize: 14),
//               ),
//              ],
//             ),
//            ],
//           ),
//           const SizedBox(
//            height: 20,
//           ),
//          ])),
//     ),
//    );
//   }
// }
