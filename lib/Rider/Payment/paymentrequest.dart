import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ridewellapp/Rider/drawer_rider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ridewellapp/models/ridehistorymodel.dart';
import 'package:ridewellapp/utils/mediaquery.dart';
import 'package:ridewellapp/widgets/custome_button.dart';
import 'package:ridewellapp/widgets/dimcontainer.dart';

const LatLng currentLocation=LatLng(27.7172, 85.3240);
class RequestPaymentPage extends StatefulWidget {
  const RequestPaymentPage({super.key});

  @override
  State<RequestPaymentPage> createState() => _RequestPaymentPageState();
}

class _RequestPaymentPageState extends State<RequestPaymentPage> {
  bool isRequestedTrip=true;
  @override
  Widget build(BuildContext context) {
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

            Positioned(
              //left: getHorizontalSize(20),
              top: getVerticalSize(340),
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
              //   
            ],),
            ),

           const  SizedBox(
                      height: 20,
                    ),
            SizedBox(
              width: getHorizontalSize(374),
              
              child: CustomeButton(label: "Start Trip", onpressed: (){}))
            

                ]),
              ),
            )),
            isRequestedTrip?DimContainerPAge():SizedBox.shrink(),
            isRequestedTrip? Positioned(
              left: getHorizontalSize(20),
              top: getVerticalSize(266),
              child: Container(
                padding: EdgeInsets.only(top: 30,bottom: 30),
              width: getHorizontalSize(374) ,
              height: getVerticalSize(275),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white
              ),
              child: Column(children: [
                Text("Trip Completed", style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 30,),
                Container(
                  width: getHorizontalSize(285),
                  child: Text("You have successfully reached your destination. Don’t you forget to collect your trip fare !",textAlign: TextAlign.center,),
                ),
                SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: SizedBox(width: getHorizontalSize(314),
              height: getVerticalSize(56),
                child: CustomeButton(label: "Request Payment", onpressed: (){
                  Navigator.pushNamed(context, "/modeofpayment");
                })),
            )
            

              ]),
            )):
            Positioned(
              //left: getHorizontalSize(20),
              top: getVerticalSize(340),
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
            SizedBox(
              width: getHorizontalSize(374),
              
              child: CustomeButton(label: "Start Trip", onpressed: (){}))
            

                ]),
              ),
            ))

          
        ],
      ),
    );
  }
}