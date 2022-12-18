import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ridewellapp/Rider/drawer_rider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ridewellapp/models/ridehistorymodel.dart';
import 'package:ridewellapp/utils/mediaquery.dart';
import 'package:ridewellapp/widgets/custome_button.dart';

const LatLng currentLocation = LatLng(27.7172, 85.3240);

class ModeOfPayment extends StatefulWidget {
  const ModeOfPayment({super.key});

  @override
  State<ModeOfPayment> createState() => _ModeOfPaymentState();
}

class _ModeOfPaymentState extends State<ModeOfPayment> {
  bool isRequestedTrip = true;
  String method="cash";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: DrawerPage(),

      body: Stack(
        children: [
          const GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: currentLocation, zoom: 14)),
          Positioned(
              left: getHorizontalSize(15),
              top: getVerticalSize(58),
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/menurider");
                  },
                  child: SvgPicture.asset("images/img_menu.svg"))),
          isRequestedTrip
              ? Positioned(
                  //left: getHorizontalSize(20),
                  top: getVerticalSize(350),
                  child: Container(
                    padding: EdgeInsets.only(top: 30, bottom: 30),
                    width: getHorizontalSize(414),
                    height: getVerticalSize(530),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Center(
                              child:  Text(
                                "Select Payment recieving method",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 36,),
                            Row(children: [
                              Flexible(
                                //flex: 5,
                                child: Radio(
                                  activeColor: const Color(0xffDC143C),
                                  value: "cash",
                                groupValue: method,
                                onChanged: (value) {
                                  setState(() {
                                    method = value.toString();
                                    print(method);
                                  });
                                },),
                              ),
                              Flexible(
                                flex: 11,
                                child:  ListTile(
                                  leading: Image.asset("images/logo.png"),
                                  title:  const Text("Cash",style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),),
                                subtitle:  const Text("Request client for fare cash"),
                                ),
                              )
                            ],),
                            
                            const Divider(),
                            Row(
                              children: [
                                Flexible(
                                //flex: 5,
                                child: Radio(
                                  activeColor: const Color(0xffDC143C),
                                  value: "Paywell",
                                groupValue: method,
                                onChanged: (value) {
                                  setState(() {
                                    method = value.toString();
                                    
                                  });
                                },),
                              ),
                              Flexible(
                                flex: 11,
                                child:  ListTile(
                                  leading: Image.asset("images/logo.png"),
                                  title: const Text("Paywell",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),),
                                  subtitle: const Text("Request client for fare in wallet"),
                                ),
                              )


                              ],
                            ),
                            const Divider(),
                            Row(
                              children: [
                                Flexible(
                                //flex: 5,
                                child: Radio(
                                  activeColor: const Color(0xffDC143C),
                                  value: "QR",
                                groupValue: method,
                                onChanged: (value) {
                                  setState(() {
                                    method = value.toString();
                                    
                                  });
                                },),
                              ),
                              Flexible(
                                flex: 11,
                                child:  ListTile(
                                  leading: Image.asset("images/logo.png"),
                                  title: const Text("QR",style: TextStyle(
                                    fontWeight: FontWeight.bold
                                  ),),
                                  subtitle: const Text("Request client for QR pay"),
                                ),
                              )


                              ],
                            ),
                            SizedBox(height: 30,),
                            SizedBox(
                                width: getHorizontalSize(374),
                                child: CustomeButton(
                                    label: "Request", onpressed: () {}))
                          ]),
                    ),
                  ))
              : Positioned(
                  top: getVerticalSize(735),
                  child: Container(
                    padding: const EdgeInsets.only(top: 30),
                    width: getHorizontalSize(414),
                    height: getVerticalSize(118),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: Colors.white),
                    child: Center(
                      child: Column(
                        children: const [
                          Text(
                            "Today",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text("No Requests yet!"),
                        ],
                      ),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
