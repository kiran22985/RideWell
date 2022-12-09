import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import 'package:ridewellapp/models/ridehistorymodel.dart';
import 'package:ridewellapp/widgets/days.dart';
import 'package:ridewellapp/widgets/square.dart';

import '../widgets/custome_button.dart';

class RideHistoryPage extends StatefulWidget {
  const RideHistoryPage({super.key});

  @override
  State<RideHistoryPage> createState() => _RideHistoryPageState();
}

class _RideHistoryPageState extends State<RideHistoryPage> {
  TextEditingController dateInput = TextEditingController();
  final List<String> days = [
    "7 Days",
    "15 Days",
    "30 Days",
    "40 days",
    "60 days"
  ];
  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ride History",
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
                height: 60,
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
                    Expanded(
                        child: InkWell(
                            onTap: () {
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
                                        width: 414,
                                        height: 281,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text(
                                              "Date Filter",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child: Column(
                                                  children: [
                                                    Text("From"),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10.0),
                                                      child: TextFormField(
                                                        onTap: () async {
                                                          DateTime? pickedDate =
                                                              await showDatePicker(
                                                                  context:
                                                                      context,
                                                                  initialDate:
                                                                      DateTime
                                                                          .now(),
                                                                  firstDate:
                                                                      DateTime(
                                                                          1950),
                                                                  //DateTime.now() - not to allow to choose before today.
                                                                  lastDate:
                                                                      DateTime(
                                                                          2100));

                                                          if (pickedDate !=
                                                              null) {
                                                            print(
                                                                pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                                            String
                                                                formattedDate =
                                                                DateFormat(
                                                                        'yyyy-MM-dd')
                                                                    .format(
                                                                        pickedDate);
                                                            print(
                                                                formattedDate); //formatted date output using intl package =>  2021-03-16
                                                            setState(() {
                                                              dateInput.text =
                                                                  formattedDate; //set output date to TextField value.
                                                            });
                                                          } else {}
                                                        },
                                                        decoration: InputDecoration(
                                                            hintText:
                                                                "10/12/2022",
                                                            prefixIcon: Icon(Icons
                                                                .calendar_month),
                                                            border: OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30))),
                                                      ),
                                                    )
                                                  ],
                                                )),
                                                Expanded(
                                                    child: Column(
                                                  children: [
                                                    Text("To"),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10.0),
                                                      child: TextFormField(
                                                        decoration: InputDecoration(
                                                            hintText:
                                                                "10/12/2022",
                                                            prefixIcon: Icon(Icons
                                                                .calendar_month),
                                                            border: OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30))),
                                                      ),
                                                    )
                                                  ],
                                                ))
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            SizedBox(
                                                width: 320,
                                                child: CustomeButton(
                                                  label: "Apply",
                                                  onpressed: () {},
                                                )),
                                          ],
                                        ),
                                      ));
                            },
                            child: SvgPicture.asset("images/menu.svg")))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              //==========Vertical listview start here====================
              Container(
                height: 600,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: triphistory.length,
                    itemBuilder: (BuildContext context, int index) {
                      return MySqure(
                        tripID: triphistory[index].tripID,
                        date: triphistory[index].date,
                        source: triphistory[index].source,
                        destination: triphistory[index].destination,
                        image: triphistory[index].image,
                        rating: triphistory[index].rating,
                        cost: triphistory[index].cost,
                      );
                    }),
              )
            ],
          ),
        ),
      )),
    );
  }
}
