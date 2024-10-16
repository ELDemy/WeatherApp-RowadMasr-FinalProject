import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather/views/home_screen/CitySelectionPage.dart';

import 'views/home_screen/providers/CityProvider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
          create: (context) => CityProvider(),
          child: const CitySelectionPage()),
    );
  }
}
