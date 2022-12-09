import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MenuRiderPage extends StatefulWidget {
  const MenuRiderPage({super.key});

  @override
  State<MenuRiderPage> createState() => _MenuRiderPageState();
}

class _MenuRiderPageState extends State<MenuRiderPage> {
 ListTile buildListTile({String? title, String? subtitle}){
   return  ListTile(
            title: Text("$title",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("$subtitle"),
            trailing: Icon(Icons.arrow_back),
          );


  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 23, top: 130),
          child: Column(
            children: [
              Row(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        child: Image.asset("images/riderpic.png"),
                      ),
                      Positioned(top: 70,
                      left: 30,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle),
                          child: Icon(Icons.edit,color: Colors.black,)))
                    ],
                  ),
                  SizedBox(width: 10,),
                  
                 Column(
                  
                  children: [
                     Text("Deepankar Khanal"),
                     Text("+977 9808420246"),
      
                     TextButton(onPressed: (){}, child: Text("View Profile"))
                  ],
                 )
      
                ],
              ),
              SizedBox(height: 20,),
              Divider(),
              buildListTile(title: "Ride History", subtitle: "View everything about your trip you did",),
              Divider(),
              buildListTile(title: "Dashboard", subtitle: "View all of your informations and insights at one place",),
              Divider(),
              buildListTile(title: "My Documents", subtitle: "View all of your documents",),
              Divider(),
              buildListTile(title: "My Reviews", subtitle: "Check all the reviews user gave",),
              Divider(),
              buildListTile(title: "Saved Address", subtitle: "View all of your saved address",),
              SizedBox(height: 125,),
              Divider(),
              ListTile(
                leading: SvgPicture.asset("images/image_permission.svg"),
                title: Text("Permissions"),
              ),
              ListTile(
                leading: SvgPicture.asset("images/image_permission.svg"),
                title: Text("Terms & Conditions"),
              ),
              ListTile(
                leading: SvgPicture.asset("images/menu_support.svg"),
                title: Text("Support"),
              ),
              ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
            )

      
            ],
          ),
        ),
      ),
    );
  }
}