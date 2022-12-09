import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.pink,
      body: SafeArea(child: Stack(
        children: [

          InkWell(
            onTap: (){
              showDialog(context: context, builder: (BuildContext context) => AlertDialog(
          
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: const Text('AlertDialog Title'),
          content: const Text('AlertDialog description'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            const TextButton(
              onPressed: null,
              child: Text('OK'),
            ),
          ],
        ),);
            },
            child: SvgPicture.asset("images/img_menu.svg"))
        ],
      )),
    );
  }
}