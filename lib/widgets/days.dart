import 'package:flutter/material.dart';

class DaysPage extends StatelessWidget {
 DaysPage({super.key});

  final List<String> days = [
    "7 Days",
    "15 Days",
    "30 Days",
    "40 days",
    "60 days"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: days.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsets.all(10),
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 90,
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Color(0xffF7F8F9),
                                  ),
                                  child: Text("${days[index]}"),
                                ),
                              );
                            });
  }
}