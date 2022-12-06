import 'package:flutter/material.dart';
 import 'dart:io';
import 'package:ridewellapp/constants/color.dart';
import 'package:ridewellapp/widgets/custome_button.dart';
import 'package:ridewellapp/widgets/dropdown.dart';
import 'package:image_picker/image_picker.dart';

class RideRegistration extends StatefulWidget {
  const RideRegistration({super.key});

  @override
  State<RideRegistration> createState() => _RideRegistrationState();
}

class _RideRegistrationState extends State<RideRegistration> {
  XFile? imageStore;
  @override
  Widget build(BuildContext context) {
   final image =ImagePicker();
    imageSelect() async {
      imageStore=await image.pickImage(source: ImageSource.gallery);
      setState(() {
        
      });
    }
    return Scaffold(
      
        body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: AppBar(
              elevation: 0,
              leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.black,)),
              title: Text("Ride Sharing",style: TextStyle(color: Colors.black,fontSize: 16),),
              centerTitle: true,
              backgroundColor: Colors.white,
            ),
            pinned: true,
            floating: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Ride Sharing",style: TextStyle(color:Colors.black,fontSize: 15),),
              centerTitle: true,
              background: Image.asset("images/rideregister.png", fit: BoxFit.fill,),

            ),

          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                

                //===================text below image section===============
                Container(
                    width: 200,
                    child: const Text(
                      "Begin your Rider journey with sign up Today!",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Color(0xff757575)),
                    )),
                const SizedBox(
                  height: 20,
                ),

                //==============vehicle register textfields and cards starts here===================
                Container(
                  //height: 200,
                  width: double.infinity,
                  child: Card(
                    elevation: 10,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Column(
                              children: const [
                                Text(
                                  "Register Your Vehicle",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "We will need to verify your vehicle for authenticity and security purpose. Be sure to upload genuine documents.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xff757575),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          //=========TextFormFields starts here============
                          Form(
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              //=========vehicle Type section=================
                              const Text(
                                "Vehicle",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              
                              //===========Dropdown Button Section===========
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  decoration: BoxDecoration(
                                    border:
                                      Border.all(width: 1, color: Colors.grey),

                                  borderRadius: BorderRadius.circular(30),
                                  ),
                                    width: 350,
                                    height: 60,
                                    child: DropDownPage(),
                                    ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              
                              //========vehicle model section==========

                              const Text(
                                "Vehicle Model",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                  width: 350,
                                  height: 60,
                                  child: TextFormField(
                                    //keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        //prefixIcon: const Icon(Icons.phone),
                                        hintText: "e.g Bajaj pulsar Ns200",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        contentPadding:
                                            const EdgeInsets.all(20)),
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              
                              //=========Vehicle Registration Number Section=================
                              const Text(
                                "Vehicle Registration Number",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                  width: 350,
                                  height: 60,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        //prefixIcon: const Icon(Icons.phone),
                                        hintText: "Bike/Scooter",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        contentPadding:
                                            const EdgeInsets.all(20)),
                                  )),
                              const SizedBox(
                                height: 20,
                              ),
                              
                            //============ vehicle registration Upload documents============  
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.grey),

                                  borderRadius: BorderRadius.circular(20),
                                  //color: Colors.grey,
                                ),
                                width: 400,
                                height: 170,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                        onTap: () {
                      //                     imageStore == null
                      // ? Center(child: new Text('Sorry nothing selected!!'))
                      // : Center(child: Image.file(imageStore);
                                        },
                                        child: const Icon(
                                          Icons.image,
                                          size: 40,
                                        )),
                                    const Text("Upload Your documents")
                                  ],
                                ),
                              ),

                              const SizedBox(height: 20),
                              
                              //============Driving Licence============
                              const Text(
                                "Driving Licence",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                  width: 350,
                                  height: 60,
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        //prefixIcon: const Icon(Icons.phone),
                                        hintText: "Driving License",
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        contentPadding:
                                            const EdgeInsets.all(20)),
                                  )),
                              const SizedBox(
                                height: 20,
                              ),

                              //========Driving Licence Document==========================
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.grey),

                                        borderRadius: BorderRadius.circular(20),
                                        //color: Colors.grey,
                                      ),
                                      width: 400,
                                      height: 170,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          InkWell(
                                              onTap: () {},
                                              child: const Icon(
                                                Icons.image,
                                                size: 40,
                                              )),
                                          const Text("Upload Your documents")
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.grey),

                                        borderRadius: BorderRadius.circular(20),
                                        //color: Colors.grey,
                                      ),
                                      width: 400,
                                      height: 170,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          InkWell(
                                              onTap: () {},
                                              child: const Icon(
                                                Icons.image,
                                                size: 40,
                                              )),
                                          const Text("Upload Your documents")
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),


                              const SizedBox(
                                height: 20,
                              ),
                              //=============Vehicle photo ==================
                              const Text(
                                "Vehicle Photo",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.grey),

                                  borderRadius: BorderRadius.circular(20),
                                  //color: Colors.grey,
                                ),
                                width: 400,
                                height: 170,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                        onTap: () {},
                                        child: const Icon(
                                          Icons.image,
                                          size: 40,
                                        )),
                                    Text("Upload Your documents"),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              //==================Register button here============
                              CustomeButton(
                                  label: "Register",
                                  onpressed: () {
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
                                  })
                            ],
                          ))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
            ]

          ))
        ],
      ),);
  }
}
