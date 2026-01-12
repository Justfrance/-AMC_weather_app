import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'screens/weather_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      // 'debugShowCheckedModeBanner' is a direct property of MaterialApp.
      debugShowCheckedModeBanner: false,
      // The 'theme' property takes a single, un-nested ThemeData object.
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // useMaterial3 is a direct property of ThemeData.
        useMaterial3: true,
      ),
      // 'home' is a direct property of MaterialApp.
      home: const WeatherScreen(),
    );
  }
}
