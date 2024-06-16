import 'package:flutter/material.dart';

class AmPmWidget extends StatelessWidget {
  bool isItAm ;
  AmPmWidget({required this.isItAm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        child: Center(
            child: Text(
              isItAm == true ? '오전' : '오후', style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}
