import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ridewellapp/Rider/drawer_rider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ridewellapp/models/ridehistorymodel.dart';
import 'package:ridewellapp/utils/mediaquery.dart';
import 'package:ridewellapp/widgets/custome_button.dart';

const LatLng currentLocation=LatLng(27.7172, 85.3240);
class ViewDetailPage extends StatefulWidget {
  const ViewDetailPage({super.key});

  @override
  State<ViewDetailPage> createState() => _ViewDetailPageState();
}

class _ViewDetailPageState extends State<ViewDetailPage> {
  bool isRequestedTrip=true;
  Timer? countDownTimer;
  Duration myDuration=Duration(seconds: 60);

   @override
   void initState(){
    super.initState();
    
    countDownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  
   }

   
  // Step 4
  void stopTimer() {
    setState(() => countDownTimer!.cancel());
  }

  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countDownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    return Scaffold(
      //drawer: DrawerPage(),
      
      body: Stack(
        children:  [
          const GoogleMap(
            initialCameraPosition: CameraPosition(
              target: currentLocation,
              zoom: 14) ),

          Positioned(
            left: getHorizontalSize(15),
            top: getVerticalSize(58),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, "/menurider");
              },
              child: SvgPicture.asset("images/img_menu.svg"))),

            isRequestedTrip? Positioned(
              //left: getHorizontalSize(20),
              top: getVerticalSize(350),
              child: Container(
                padding: EdgeInsets.only(top: 30, bottom: 30),
              width: getHorizontalSize(414) ,
              height: getVerticalSize(550),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  Center(child: Column(
                    children: [
                      const Text("Waiting at pickup point !", style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(
                      height: 15,
                    ),
                  CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.red,
                      child: CircleAvatar(
                        radius: 26,
                        child: Image.asset("images/riderpic.png"),
                      ),
                    ),
                    const  SizedBox(
                      height: 10,
                    ),
                    const Text("Uttam Gautam",style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: Row(children: [
                          SvgPicture.asset("images/phone.svg"),
                          const SizedBox(width: 26,),
                          SvgPicture.asset("images/comment.svg"),
                      ],),
                    ),
                SizedBox(height: 20,),
                Text("Trip Details", style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 10,),
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
            SizedBox(
              width: getHorizontalSize(320),
              child: Row(
                
                children: [
                
                Expanded(
                  flex: 10,
                  child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Total Distance"),
                SizedBox(height: 5,),
                Text(triphistory[0].distance.toString(),style: TextStyle(fontWeight: FontWeight.bold),)
              ],
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  flex: 5,
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Fare"),
                  SizedBox(height: 5,),
                  Text("Rs. "+triphistory[0].cost.toString(),style: TextStyle(fontWeight: FontWeight.bold),)
                ],)),
                SizedBox(width: 20,),
                Expanded(
                  flex: 7,
                  child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
              Text("Ride For"),
              SizedBox(height: 5,),
              Text("Self",style: TextStyle(fontWeight: FontWeight.bold),)
                
                  ],),
                )
            ],),
            ),

           const  SizedBox(
                      height: 20,
                    ),
            Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: SizedBox(//width: getHorizontalSize(320),
                height: getVerticalSize(56),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: getHorizontalSize(177),
                          height: getVerticalSize(60),
                          child: OutlinedButton(
                            onPressed: (){},
                             
                            child: Text("Cancel Ride", style: TextStyle(color:const Color(0xffDC143C),),),
                            style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: const Color(0xffDC143C),
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),
                            
                            )
                          ),)),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: SizedBox(
                          width: getHorizontalSize(177),
                          child: CustomeButton(label: "Accept Trip($seconds)", onpressed: (){
                            
                            Navigator.pushNamed(context, "/starttrip");
                          })),
                      ),
                    ],
                  )),
            )
            

                ]),
              ),
            )):
            Positioned(
              top: getVerticalSize(735),
              child: Container(
                padding: const EdgeInsets.only(top: 30),
                width: getHorizontalSize(414),
                height: getVerticalSize(118),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                  color: Colors.white
                ),
                child: Center(child: Column(
                  children: const [
                    Text("Today",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Text("No Requests yet!"),
                  ],
                ),),
              ),
            )

          
        ],
      ),
    );
  }
}