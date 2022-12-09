import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ridewellapp/models/ridehistorymodel.dart';


class Review_WidgetPage extends StatelessWidget {
  const Review_WidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 374,
      height: 190,
      padding: EdgeInsets.only(left: 20),
      child: Column(children: [
        Row(children: [
          CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.red,
                    child: CircleAvatar(
                      radius: 24,
                      child: Image.asset("images/riderpic.png"),
                    ),
                  ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(triphistory[0].name, style: TextStyle(fontWeight: FontWeight.bold),),
                RatingBar.builder(
                      itemSize: 24,
                      glow: false,
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        size: 5,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),

              ],
            ),
          ),
          SizedBox(width: 20,),
          Text(" 2 days ago")
        ],),
        SizedBox(
          width: 320,
          
          child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. ",textAlign: TextAlign.justify,)),
        SizedBox(height:10,),
        Divider()
      ]),

    );
  }
}