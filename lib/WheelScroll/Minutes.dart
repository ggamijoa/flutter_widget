import 'package:flutter/material.dart';

class MinutesWidget extends StatelessWidget {
  int mins ;
  MinutesWidget({required this.mins}) ;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        child: Center(
          child: Text(
            mins < 10 ? '0'+mins.toString() : mins.toString(),
            style: TextStyle(fontSize: 40,color: Colors.white, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
