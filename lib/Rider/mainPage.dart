import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ridewellapp/Rider/drawer_rider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ridewellapp/models/ridehistorymodel.dart';
import 'package:ridewellapp/utils/mediaquery.dart';
import 'package:ridewellapp/widgets/custome_button.dart';
import 'package:ridewellapp/widgets/dimcontainer.dart';

const LatLng currentLocation=LatLng(27.7172, 85.3240);
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isRequestedTrip=true;
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   const SystemUiOverlayStyle(
    //     statusBarColor: Colors.transparent,
    //     statusBarBrightness: Brightness.dark,
    //     statusBarIconBrightness: Brightness.dark,
        
    //     )
    // );
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

            isRequestedTrip?DimContainerPAge():SizedBox.shrink(),
            isRequestedTrip? Positioned(
              left: getHorizontalSize(20),
              top: getVerticalSize(266),
              child: Container(
                padding: EdgeInsets.only(top: 30),
              width: getHorizontalSize(374) ,
              height: getVerticalSize(354),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white
              ),
              child: Column(children: [
                Text("Hey, You got a trip request !", style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(
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
                  SizedBox(
                    height: 10,
                  ),
                  Text("Uttam Gautam",style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 53),
                    child: SizedBox(
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
                Text("Fair"),
                SizedBox(height: 5,),
                Text("Rs. "+triphistory[0].cost.toString(),style: TextStyle(fontWeight: FontWeight.bold),)
              ],)),
              SizedBox(width: 20,),
              Expanded(
                flex: 7,
                child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text("Ride For"),
                      SizedBox(height: 5,),
                      Text("Self",style: TextStyle(fontWeight: FontWeight.bold),)
              
                ],),
              )
            ],),
                    ),
                  ),
            SizedBox(
                    height: 20,
                  ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: SizedBox(width: getHorizontalSize(314),
              height: getVerticalSize(56),
                child: CustomeButton(label: "View Details", onpressed: (){
                  Navigator.pushNamed(context, "/viewdetail");
                })),
            )
            

              ]),
            )):
            Positioned(
              top: getVerticalSize(735),
              child: Container(
                padding: EdgeInsets.only(top: 30),
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