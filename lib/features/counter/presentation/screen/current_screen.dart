// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:weather_icons/weather_icons.dart';
//
// class WeatherHomeScreen extends StatefulWidget {
//   const WeatherHomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<WeatherHomeScreen> createState() => _WeatherHomeScreenState();
// }
//
// class _WeatherHomeScreenState extends State<WeatherHomeScreen> {
//   TextEditingController searchController =   TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     var name = ["Lahan", "Biratnagar", "Rajbiraj"];
//     return Scaffold(
//
//       body: SafeArea(
//         child: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 stops: [0.1, 0.9],
//                 colors: [Colors.blue, Colors.lightGreen]),
//           ),
//           child: Column(
//             children: [
//               Container(
//                 /// search Container
//                 padding: const EdgeInsets.symmetric(horizontal: 8),
//                 margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(24)),
//                 child: Row(
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         print("searchController.text");
//                       },
//                       child: Container(
//                         margin: const EdgeInsets.fromLTRB(3, 0, 7, 0),
//                         child: const Icon(
//                           Icons.search,
//                           color: Colors.blueAccent,
//                         ),
//                       ),
//                     ),
//                     const Expanded(
//                       child: TextField(
//                         controller: searchController,
//                         decoration: InputDecoration(
//                             border: InputBorder.none,
//                             hintText: "Search Any City Name"),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(14),
//                         color: Colors.white.withOpacity(0.5),
//                       ),
//                       margin: const EdgeInsets.symmetric(horizontal: 25),
//                       padding: const EdgeInsets.all(26),
//                       child: Row(
//                         children: [
//                           Image.network(""),
//                           Column(
//                             children: const [
//                               Text("Scatted Clouds",style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold
//                               ),),
//                               Text("In Rajbiraj",style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold
//                               ),)
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       height: 200,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(14),
//                         color: Colors.white.withOpacity(0.5),),
//                       margin:
//                       const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
//                       padding: const EdgeInsets.all(26),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Icon(WeatherIcons.thermometer),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: const [
//                               Text("30",style: TextStyle(
//                                   fontSize: 70
//                               ),),
//                               Text("c",style: TextStyle(
//                                   fontSize: 70
//                               ),),
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Expanded(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(14),
//                         color: Colors.white.withOpacity(0.5),
//                       ),
//                       margin: const EdgeInsets.fromLTRB(20, 0, 10, 0),
//                       padding: const EdgeInsets.all(26),
//                       height: 200,
//                       child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: const [
//                                   Icon(WeatherIcons.humidity),
//                                 ],
//                               ),
//                               const SizedBox(height: 30,),
//                               const Text("20.9",style: TextStyle(
//                                   fontSize: 30,
//                                   fontWeight: FontWeight.bold
//                               ),),
//                               const Text("%")
//                             ],
//                           ),
//
//                         ],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(14),
//                         color: Colors.white.withOpacity(0.5),
//                       ),
//                       margin: const EdgeInsets.fromLTRB(10, 0, 20, 0),
//                       padding: const EdgeInsets.all(26),
//                       height: 200,
//                       child: Column(
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: const [
//                                   Icon(WeatherIcons.wind),
//                                 ],
//                               ),
//                               const SizedBox(height: 30,),
//                               const Text("60",style: TextStyle(
//                                   fontSize: 30,
//                                   fontWeight: FontWeight.bold
//                               ),),
//                               const Text("KM/hr")
//                             ],
//                           ),
//
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Container(
//                 padding: const EdgeInsets.all(20),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: const [
//                     Text("Made By Ajay"),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
