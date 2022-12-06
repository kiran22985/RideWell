import 'package:flutter/material.dart';
import 'package:ridewellapp/Rider/vehicleregister.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        primaryTextTheme: const TextTheme(headline1:TextStyle(
          fontFamily: "Inter"
        ),),
       
        scaffoldBackgroundColor: Colors.white
      ),
      
      home: const RideRegistration(),
    );
  }
}

