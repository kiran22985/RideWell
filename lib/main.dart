import 'package:flutter/material.dart';
import 'package:ridewellapp/Rider/ridehistory.dart';

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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primaryColor: Color(0xffDC143C),
        primaryTextTheme: const TextTheme(headline1:TextStyle(
          fontFamily: "Inter"
        ),),
       
        scaffoldBackgroundColor: Colors.white
      ),
      
      home: const RideHistoryPage(),
    );
  }
}

