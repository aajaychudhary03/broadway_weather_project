// import 'package:broadway_weather_project/features/counter/data/repository/weather_repository.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class SearchScreen extends StatelessWidget {
//   const SearchScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     var cityController = TextEditingController();
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Container(
//           padding:  const EdgeInsets.only(left: 33,right: 33),
//           child: Column(
//             children:  <Widget> [
//               const Text("Search Weather",
//                 style: TextStyle(
//                     fontSize: 40,
//                     fontWeight: FontWeight.w500,
//                     color: Colors.red
//                 ),),
//               const Text(
//                 "Instantly",
//                 style: TextStyle(
//                   fontSize: 40,
//                   fontWeight: FontWeight.w500,
//                   color: Colors.red,
//                 ),
//               ),
//               const SizedBox(
//                 height: 24,
//               ),
//               TextField(
//                 controller: cityController,
//                 style: const TextStyle(
//                   color: Colors.red,
//                 ),
//                 decoration:  const InputDecoration(
//                   labelText: 'search',
//                   labelStyle: TextStyle(color: Colors.red),
//                   hintText: 'search',
//                   hintStyle: TextStyle(color: Colors.red),
//                   prefix: Icon(Icons.search),
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.red,style: BorderStyle.solid),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20,
//               ),
//               SizedBox(
//                 width: double.infinity,
//                 height: 50,
//                 child: ElevatedButton(
//                     onPressed: (){
//                       WeatherRepository()
//                           .getWeather(cityController.text.trim())
//                           .then((value) {
//                         print("here");
//                       });
//                     },
//                     child: const Text("Search",
//                       style: TextStyle(color: Colors.red,fontSize: 16),)),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
