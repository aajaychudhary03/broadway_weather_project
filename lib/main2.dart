// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:broadway_weather_project/core/di/injetctable.dart';
// import 'package:broadway_weather_project/features/counter/presentation/bloc/weather_cubit.dart';
// import 'package:broadway_weather_project/features/counter/presentation/screen/splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import 'core/auto_route/router.dart';
// import 'features/counter/presentation/bloc/location/location_cubit.dart';
//
// void main() async {
//   ///Configure DI
//   await configureInjection();
//   runApp(const MyApp());
// }
//
// //GetIt getIt = GetIt.instance;
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     final AppRouter _appRouter = getIt<AppRouter>();
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider(
//           //create: (context) => WeatherCubit(WeatherRepository(WeatherDataSource())),
//           create: (context) => getIt<WeatherCubit>(),
//         ),
//         BlocProvider(
//           create: (context) => getIt<LocationCubit>(),
//         ),
//         // BlocProvider(
//         //   create: (context) => getIt<SplashCubit>(),
//         // ),
//       ],
//       child: MaterialApp(
//         // routerConfig: _appRouter.config(),
//         title: 'Weather app',
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           primaryColor: Colors.red,
//         ),
//         home: AnimatedSplashScreen(
//           animationDuration: const Duration(seconds: 2),
//           splashTransition: SplashTransition.slideTransition,
//           splash: const SplashScreen(),
//           nextScreen: MaterialApp.router(
//             routeInformationParser: _appRouter.defaultRouteParser(),
//             routerDelegate: _appRouter.delegate(),
//             routerConfig: _appRouter.config(),
//           ),
//         ),
//       ),
//     );
//   }
// }
