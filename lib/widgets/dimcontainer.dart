import 'package:flutter/material.dart';


class DimContainerPAge extends StatelessWidget {
  const DimContainerPAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.7)
        ),
      ));
  }
}