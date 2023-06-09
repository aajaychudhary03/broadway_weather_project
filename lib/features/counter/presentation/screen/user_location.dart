import 'package:auto_route/annotations.dart';
import 'package:broadway_weather_project/features/counter/presentation/bloc/location/location_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:line_icons/line_icons.dart';

@RoutePage()
class UserLocationScreen extends StatefulWidget {
  const UserLocationScreen({Key? key}) : super(key: key);

  @override
  State<UserLocationScreen> createState() => _UserLocationScreenState();
}

class _UserLocationScreenState extends State<UserLocationScreen> {
  late LocationCubit locationCubit;

  @override
  void initState() {
    super.initState();
    locationCubit = context.read<LocationCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/white_snow.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                BlocBuilder<LocationCubit, LocationState>(
                    bloc: locationCubit,
                    builder: (context, state) {
                      return state.maybeWhen(orElse: () {
                        return const Text('Getting Location...');
                      }, fetched: (data) {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("City :${data.name}",
                                  style: const TextStyle(
                                      fontSize: 45,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.blue)),
                              const SizedBox(width: 10),
                              Image.network(
                                'http://openweathermap.org/img/w/${data.weather![0].icon}.png',
                                width: 125,
                                height: 125,
                                fit: BoxFit.fill,
                              ),
                              Text(
                                " ${data.weather?[0].main}",
                                style: const TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              Text("Temp ${data.main!.temp!.round()}°C",
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.red)),
                              Text(
                                  'Feels Like:${data.main!.tempMax ?? "N/A"}°C ',
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.blue)),
                              const SizedBox(width: 8),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Text('Updated Time:$finalDateTime'),
                                      // Text('Sunrise :$finalSunriseTime'),
                                      ListTile(
                                        leading: const Icon(
                                          Icons.air,
                                          color: Colors.blue,
                                        ),
                                        title: Text(
                                            '${data.wind!.speed} Speed Km/h'),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ListTile(
                                        leading: const Icon(
                                          LineIcons.draftingCompass,
                                          color: Colors.blue,
                                        ),
                                        title: Text(
                                          'Humidity: ${data.main!.humidity}%',
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 30),
                                        ),
                                      ),
                                      ListTile(
                                        leading: const Icon(
                                          LineIcons.lowVision,
                                          color: Colors.blue,
                                        ),
                                        title: Text(
                                          'Visibility: ${data.visibility}km',
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 30),
                                        ),
                                      ),
                                      ListTile(
                                        leading: const Icon(
                                          LineIcons.pushed,
                                          color: Colors.blue,
                                        ),
                                        title: Text(
                                          'Pressure: ${data.main!.pressure}hpa',
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 30),
                                        ),
                                      ),
                                      ListTile(
                                        leading: const Icon(
                                          LineIcons.cloud,
                                          color: Colors.blue,
                                        ),
                                        title: Text(
                                          "Clouds  ${data.weather?[0].main}",
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 30),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
