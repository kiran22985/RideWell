import 'package:flutter/material.dart';
import 'package:ridewellapp/Rider/mainPage.dart';
import 'package:ridewellapp/Rider/drawer_rider.dart';
import 'package:ridewellapp/Rider/myreviewspage.dart';
import 'package:ridewellapp/Rider/ridehistory.dart';
import 'package:ridewellapp/Rider/tripdetail.dart';

import 'package:ridewellapp/Rider/vehicleregister.dart';
import 'package:ridewellapp/Rider/viewdetail.dart';
import 'package:ridewellapp/widgets/expandablewidget.dart';

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
       
        scaffoldBackgroundColor: Color(0xffFFFFFF)
      ),
      
      //
      //home:  MainPage(),
    initialRoute: "/mainpage",
      routes: {
        "/ridehistory":(context) => const RideHistoryPage(),
        "/tripdetail":(context) => const TripDetailsPage(),
        "/menurider":(context) => const DrawerPage(),
        "/mainpage":(context) => const  MainPage(),
        "/viewdetail":(context) => const ViewDetailPage(),
      },
    );
  }
}

