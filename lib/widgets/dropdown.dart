import 'package:flutter/material.dart';


class DropDownPage extends StatefulWidget {
  

   DropDownPage({super.key});

  @override
  State<DropDownPage> createState() => _DropDownPageState();
}

class _DropDownPageState extends State<DropDownPage> {
  final List<String> items=[
    "Bike",
    "Scooter",
    "Texi"
  ];

  String vehiclevalue="Bike";

  @override
  Widget build(BuildContext context) {
    return DropdownButton(// Initial Value
    isExpanded: true,
              value: vehiclevalue,
               
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),   
               
              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(items),
                  ),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  vehiclevalue=newValue!;
                });
              },);
  }
}