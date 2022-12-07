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
  XFile? _vehicleRegistrationNo;
  XFile? _licenceBack;
  XFile? _licenceFront;
  XFile? _vehicleImage;




  void pickImage1(String photoCategory) async{
    switch(photoCategory){
      case "vehicle registration number":
      if(_vehicleRegistrationNo!=null){
        setState(() {
          _vehicleRegistrationNo=null;
        });
      }
      break;
      case "licence back":
      if(_licenceBack!=null){
        setState(() {
          _licenceBack=null;
        });
      }
       break;
       case "licence front":
      if(_licenceFront!=null){
        setState(() {
          _licenceFront=null;
        });
      }
       break;
       case "vehicle photo":
      if(_vehicleImage!=null){
        setState(() {
          _vehicleImage=null;
        });
      }
       //break;



    }
    final ImagePicker picker=ImagePicker();

    final pickedImage=await  picker.pickImage(source: ImageSource.camera, imageQuality: 100);
    
    
       switch(photoCategory){
      case "vehicle registration number":
      
        setState(() {
          _vehicleRegistrationNo=pickedImage;
         
        });
      
      break;
      case "licence back":
      
        setState(() {
          _licenceBack=pickedImage;
        });
      
       break;
       case "licence front":
      
        setState(() {
          _licenceFront=pickedImage;
        });
        break;
        case "vehicle photo":
      
        setState(() {
          _vehicleImage=pickedImage;
        });
      



    


  }
  }




 
 
  
  @override
  Widget build(BuildContext context) {


      
    
    return Scaffold(
      
        body: CustomScrollView(
        slivers: [
          SliverAppBar(

            // bottom: AppBar(
            //   elevation: 0,
            //   leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.black,)),
            //   title: Text("Ride Sharing",style: TextStyle(color: Colors.black,fontSize: 16),),
            //   centerTitle: true,
            //   backgroundColor: Colors.white,
            // ),
            title: Text("Ride Sharing",style: TextStyle(color: Colors.black,fontSize: 16),),
               centerTitle: true,
            pinned: true,
            floating: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
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
                         

                          
                              InkWell(onTap: (() {
                                showModalBottomSheet(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
                                        context: context, builder:(context)=>Padding(
                                         padding: const EdgeInsets.all(20.0),
                                         child: Row(

                                          children: [
                                              Expanded(child: ElevatedButton.icon(onPressed: (){
                                               Navigator.of(context).pop();
                                                 pickImage1('vehicle registration number');
                                                

                                              }
                                                

                                              , icon: Icon(Icons.camera), label: Text(" Camera"))),
                                              SizedBox(width: 20,),
                                              Expanded(child: ElevatedButton.icon(onPressed: (){

                                              }, icon: Icon(Icons.browse_gallery), label: Text("Gallery"))),

                                          ],
                                         ),
                                       ) );
                              }),
                                child: Container(
                              
                                  decoration: BoxDecoration( 
                                    border:
                                        Border.all(width: 1, color:_vehicleRegistrationNo!=null?ColorConstant.backgroundColor :Colors.grey),
                                
                                    borderRadius: BorderRadius.circular(20),
                                    //color: Colors.grey,
                                  ),
                                  width: 400,  
                                  height: 170,
                                  child:_vehicleRegistrationNo!=null? ClipRRect(child: Image.file(File(_vehicleRegistrationNo!.path),fit: BoxFit.contain,height: 170,width: 400,)): Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      
                                      
                                       IconButton(
                                        
                                        onPressed: ()async{
                                         
                                         showModalBottomSheet(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
                                          context: context, builder:(context)=>Padding(
                                           padding: const EdgeInsets.all(20.0),
                                           child: Row(
                              
                                            children: [
                                                Expanded(child: ElevatedButton.icon(onPressed: (){
                                                 Navigator.of(context).pop();
                                                   pickImage1('vehicle registration number');
                                                  
                              
                                                }
                                                  
                              
                                                , icon: Icon(Icons.camera), label: Text(" Camera"))),
                                                SizedBox(width: 20,),
                                                Expanded(child: ElevatedButton.icon(onPressed: (){
                              
                                                }, icon: Icon(Icons.browse_gallery), label: Text("Gallery"))),
                              
                                            ],
                                           ),
                                         ) );
                                       }, icon: Icon(Icons.image,size: 40,)),
                                      const Text("Upload Your documents")
                                    ],
                                  ),
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
                                      child:_licenceFront!=null? Image.file(File(_licenceFront!.path),fit: BoxFit.fill,): Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          InkWell(
                                              onTap: () {
                                                showModalBottomSheet(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
                                        context: context, builder:(context)=>Padding(
                                         padding: const EdgeInsets.all(20.0),
                                         child: Row(

                                          children: [
                                              Expanded(child: ElevatedButton.icon(onPressed: ()async{
                                              Navigator.of(context).pop();
                                                 pickImage1('licence front');
                                                

                                              }
                                                

                                              , icon: Icon(Icons.camera), label: Text(" Camera"))),
                                              SizedBox(width: 20,),
                                              Expanded(child: ElevatedButton.icon(onPressed: (){

                                              }, icon: Icon(Icons.browse_gallery), label: Text("Gallery"))),

                                          ],
                                         ),
                                       ) );
                                              },
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
                                      child: _licenceBack!=null? Image.file(File(_licenceBack!.path),fit: BoxFit.fill,): Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          InkWell(
                                              onTap: () {
                                                showModalBottomSheet(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
                                        context: context, builder:(context)=>Padding(
                                         padding: const EdgeInsets.all(20.0),
                                         child: Row(

                                          children: [
                                              Expanded(child: ElevatedButton.icon(onPressed: (){
                                             Navigator.of(context).pop();
                                                 pickImage1('licence back');
                                                

                                              }
                                                

                                              , icon: Icon(Icons.camera), label: Text(" Camera"))),
                                              SizedBox(width: 20,),
                                              Expanded(child: ElevatedButton.icon(onPressed: (){

                                              }, icon: Icon(Icons.browse_gallery), label: Text("Gallery"))),

                                          ],
                                         ),
                                       ) );
                                              },
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
