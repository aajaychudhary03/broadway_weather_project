import 'package:broadway_weather_project/core/di/injetctable.dart';
import 'package:broadway_weather_project/features/counter/presentation/bloc/weather_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/counter/presentation/screen/weather_home_screen.dart';

void main() async {
  ///Configure DI
  await configureInjection();
  runApp(const MyApp());
}

//GetIt getIt = GetIt.instance;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      //create: (context) => WeatherCubit(WeatherRepository(WeatherDataSource())),
      create: (context) => getIt<WeatherCubit>(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Weather app',
        theme: ThemeData(
          primaryColor: Colors.red,
        ),
        home: const WeatherHomeScreen(),
      ),
    );
  }
}
