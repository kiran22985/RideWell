import 'package:flutter/material.dart';


class CustomeButton extends StatelessWidget {
  String label;
  VoidCallback onpressed;
  CustomeButton({super.key, required this.label, required this.onpressed} );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                    onPressed: onpressed,
                    child: Text(
                      label,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffDC143C),
                        minimumSize: const Size(374, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                  );
  }
}