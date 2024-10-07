import 'package:flutter/material.dart';

import 'views/test_features/test_location.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: TestLocationView(),
      ),
    );
  }
}
