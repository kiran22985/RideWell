import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ridewellapp/models/ridehistorymodel.dart';

class MySqure extends StatelessWidget {
 final  String tripID;
 final  String date;
 final  String source;
 final  String destination;
 final String image;
 final  int rating;
 final  int cost;
 const MySqure({super.key, required  this.tripID,required this.date,required this.source,required this.destination,required this.image,
  required this.rating,required this.cost});

  @override
  Widget build(BuildContext context) {
    return Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        height: 230,
                        alignment: Alignment.center,
                        width: 90,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xffF7F8F9),
                          //color: Colors.lightGreen
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children:  [
                                Expanded(child: Text("Trip ID $tripID")),
                                Expanded(
                                    child: Text(
                                  date.toString(),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset("images/location.svg"),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(source.toString())
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
                                Text(destination.toString())
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
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
                                SizedBox(width: 10,),
                                RatingBar.builder(
                                  
                                  itemSize:24 ,
                                  glow: false,
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      const EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    size: 5,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                SizedBox(width: 10,),
                                 Text(
                                  "Rs $cost",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
  }
}