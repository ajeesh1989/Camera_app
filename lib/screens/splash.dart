import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'camera_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then((value) =>
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => CameraScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // ignore: prefer_const_constructors
            SizedBox(
              height: 200,
            ),
            SizedBox(
              height: 500,
              width: 500,
              child: LottieBuilder.network(
                  "https://assets8.lottiefiles.com/packages/lf20_uewt8rjj.json",
                  fit: BoxFit.fill),
            ),
          ],
        ),
      ),
    );
  }
}
