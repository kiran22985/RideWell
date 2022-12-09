import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ridewellapp/models/ridehistorymodel.dart';
import 'package:ridewellapp/widgets/custome_button.dart';

class TripDetailsPage extends StatefulWidget {
  
   const TripDetailsPage({super.key});

  @override
  State<TripDetailsPage> createState() => _TripDetailsPageState();
}

class _TripDetailsPageState extends State<TripDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.only(top: 115, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Trip Details",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(child: Text("Trip ID")),
                Expanded(child: Text(triphistory[0].tripID, style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.bold
                ),) )
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(child: Text("Date & Time")),
                Expanded(child: Text(triphistory[0].date, style: TextStyle(
                  fontSize: 14, fontWeight: FontWeight.bold
                )) )
              ],
            ),
             SizedBox(height: 20,),
            Row(
              children: [
                SvgPicture.asset("images/location.svg"),
                const SizedBox(
                  width: 10,
                ),
                Text(triphistory[0].source),
              ],
            ),
            
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SvgPicture.asset("images/line.svg"),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SvgPicture.asset("images/destination.svg"),
                const SizedBox(
                  width: 10,
                ),
                Text(triphistory[0].destination)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.red,
                    child: CircleAvatar(
                      radius: 24,
                      child: Image.asset("images/riderpic.png"),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(triphistory[0].name,style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              
              children: [
              
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Total Distance"),
                    SizedBox(height: 5,),
                    Text(triphistory[0].distance.toString(),style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              SizedBox(width: 40,),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Fair"),
                SizedBox(height: 5,),
                Text("Rs. "+triphistory[0].cost.toString(),style: TextStyle(fontWeight: FontWeight.bold),)
              ],)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Travel Time"),
                  SizedBox(height: 5,),
                  Text(triphistory[0].traveltime.toString(),style: TextStyle(fontWeight: FontWeight.bold),)
              
                ],),
              )
            ],),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(right: 20),
              padding: EdgeInsets.all(20),
              width: 373,
              height: 161,
              decoration: BoxDecoration(
                color: Color(0xffF2F2F2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text("Receipt"),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Text("Base Fair")),
                      Expanded(child: Text(triphistory[0].cost.toString()))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Text("Surge Fair")),
                      Expanded(child: Text(triphistory[0].cost.toString()))
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Text("Total")),
                      Expanded(child: Text(triphistory[0].cost.toString()))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 50,),
            Container(
              width:320 ,
              child: CustomeButton(label: "Done", onpressed: (){}))
          ],
        ),
      )),
    );
  }
}
