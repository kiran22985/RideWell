import 'package:flutter/material.dart';
import 'package:ridewellapp/models/ridehistorymodel.dart';

class AlertContainer extends StatefulWidget {
  const AlertContainer({super.key});

  @override
  State<AlertContainer> createState() => _AlertContainerState();
}

class _AlertContainerState extends State<AlertContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white
      ),
      child: Column(
          children: [
            Text("Hey, you got a trip request !"),
            CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.red,
                    child: CircleAvatar(
                      radius: 24,
                      child: Image.asset("images/riderpic.png"),
                    ),
                  ),
                  Text(triphistory[0].name),
                  Row(children: [
                    Column(children: [
                        
                    ],),
                    Column(children: [

                    ],),
                    Column(children: [

                    ],)
                    
                  ],)
          ],
      ),
    );
  }
}