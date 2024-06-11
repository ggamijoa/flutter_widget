import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          //alignment: Alignment(0.5,0.5),
          //padding: EdgeInsets.all(20),
          height: 250,
          width: 250,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
            //borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: Offset(4.0,4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0,-4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
            ]
            //color: Colors.deepPurple,
            //shape: BoxShape.circle,
            // border: Border.all(
            //   color: Colors.black,
            //   width: 5,
            // ),
          ),
          child: Text('Hello',style: TextStyle(fontSize: 30),),
        ),
      ),
    );
  }
}
