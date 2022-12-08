import 'package:flutter/material.dart';

class RideHistoryModel{
 final  String tripID;
 final  String date;
  final String source;
  final String destination;
 final  String image;
  final int rating;
  final int cost;

  RideHistoryModel({ required this.tripID, required this.date, required this.source,required this.destination,
  required this.image,required this.rating,required this.cost});

  

  
}




List<RideHistoryModel> triphistory=[
    RideHistoryModel(
      tripID: "A03QDR",
      date: "Feb 02,2022 9:30 AM",
      source: "Baghbazar",
      destination: "kalanki",
      image: "",
      rating: 3,
      cost: 120
    ),

    RideHistoryModel(
      tripID: "A03QDR",
      date: "Feb 02,2022 9:30 AM",
      source: "Baghbazar",
      destination: "kalanki",
      image: "",
      rating: 3,
      cost: 120
    ),
    RideHistoryModel(
      tripID: "A03QDR",
      date: "Feb 02,2022 9:30 AM",
      source: "Baghbazar",
      destination: "kalanki",
      image: "",
      rating: 3,
      cost: 120
    ),
    RideHistoryModel(
      tripID: "A03QDR",
      date: "Feb 02,2022 9:30 AM",
      source: "Baghbazar",
      destination: "kalanki",
      image: "",
      rating: 3,
      cost: 120
    ),
    RideHistoryModel(
      tripID: "A03QDR",
      date: "Feb 02,2022 9:30 AM",
      source: "Baghbazar",
      destination: "kalanki",
      image: "",
      rating: 3,
      cost: 120
    ),
    RideHistoryModel(
      tripID: "A03QDR",
      date: "Feb 02,2022",
      source: "Baghbazar",
      destination: "kalanki",
      image: "",
      rating: 3,
      cost: 120
    )

  ];


