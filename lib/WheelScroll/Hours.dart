import 'package:flutter/material.dart';

class HoursWidget extends StatelessWidget {
  int hours ;
  HoursWidget({required this.hours}) ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        child: Center(
          child: Text(
            hours < 10 ? '0'+hours.toString() : hours.toString(),
            style: TextStyle(fontSize: 40,color: Colors.white, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
