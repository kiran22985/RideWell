import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ridewellapp/widgets/custome_button.dart';
import 'package:intl/intl.dart';
import 'package:ridewellapp/widgets/review_widget.dart';



class RiderReviewsPage extends StatefulWidget {
  const RiderReviewsPage({super.key});

  @override
  State<RiderReviewsPage> createState() => _RiderReviewsPageState();
}

class _RiderReviewsPageState extends State<RiderReviewsPage> {
  TextEditingController dateInput = TextEditingController();

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
        title: const Text("My Reviews",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(child: Column(
          children: [
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
                                                        
                                                        controller: dateInput,
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
                                                                          print('hello'+pickedDate.toString());

                                                          if (pickedDate !=
                                                              null) {
                                                            print(
                                                                pickedDate); 
                                                            String
                                                                formattedDate =
                                                                DateFormat(
                                                                        'yyyy-MM-dd')
                                                                    .format(
                                                                        pickedDate);
                                                            
                                                            setState(() {
                                                              dateInput.text =
                                                                  formattedDate; 
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
              Container(
                height: 600,
                child: ListView.builder(itemBuilder: (BuildContext context, int index){
                  return Review_WidgetPage();
                }),
              )

          ],
        ),),
      )),


    );
  }
}