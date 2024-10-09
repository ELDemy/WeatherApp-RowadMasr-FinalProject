import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/views/home_screen/CitySelectionPage.dart';
import 'package:weather/views/home_screen/providers/CityProvider.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableProvider(
      create: (context) => CityProvider(),
      builder: (context, child) => const MaterialApp(
        home: Scaffold(
          body: CitySelectionPage(),
        ),
      ),
    );
  }
}
