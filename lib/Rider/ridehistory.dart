import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ridewellapp/models/ridehistorymodel.dart';
import 'package:ridewellapp/widgets/square.dart';


import '../widgets/custome_button.dart';

class RideHistoryPage extends StatefulWidget {
  const RideHistoryPage({super.key});

  @override
  State<RideHistoryPage> createState() => _RideHistoryPageState();
}

class _RideHistoryPageState extends State<RideHistoryPage> {
  final List<String> days = [
    "7 Days",
    "15 Days",
    "30 Days",
    "40 days",
    "60 days"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ride History",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //=========Horizontal listview here====================
              Container(
                  //color: Colors.red,
                  height: 55,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 11,
                        child: ListView.builder(
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
                            }),
                      ),
                      Expanded(child: InkWell(
                        onTap: (){
                          showModalBottomSheet(
                                        
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20))),
                                        // isDismissible:
                                        //     true, 
                                        //enableDrag: false,
                                        context: context,
                                        builder: (context) => Container(
                                          height: 200,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                                children:  [
                                                  const Text(
                                  "Register Your Vehicle",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 380,
                                  child: const Text(
                                    "We will need to verify your vehicle for authenticity and security purpose. Be sure to upload genuine documents.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xff757575),
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20,),
                                SizedBox(
                                  width: 350,
                                  child: CustomeButton(label: "Done", onpressed: (){}, )),



                                                ],
                                              ),
                                        ));
                        },
                        child: SvgPicture.asset("images/menu.svg")))
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
        
              //==========Vertical listview start here====================
              Container(
                height: 600,
                
                child: ListView.builder(
                 
                    scrollDirection: Axis.vertical,
                    itemCount:triphistory.length,
                    itemBuilder: (BuildContext context, int index) {
                      return MySqure(tripID:triphistory[index].tripID,date:triphistory[index].date,
                      source:triphistory[index].source,destination:triphistory[index].destination,
                     image: triphistory[index].image,rating:triphistory[index].rating,
                     cost: triphistory[index].cost,);
                    }),
              )
            ],
          ),
        ),
      )),
    );
  }
}
