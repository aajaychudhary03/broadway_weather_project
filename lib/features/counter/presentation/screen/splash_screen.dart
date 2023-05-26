import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../../../core/auto_route/router.gr.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      context.router.push(const WeatherHomeRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/sunny.png',
              height: 240,
              width: 240,
            ),
            const Text(
              "Weather App",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.w500, color: Colors.red),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Made By Ajay Chaudhary",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w400, color: Colors.red),
            ),
            const SizedBox(
              height: 30,
            ),
            const SpinKitWaveSpinner(
              color: Colors.red,
              size: 60.0,
            ),
          ],
        ),
      ),
    );
  }
}
