import 'package:flutter/material.dart';
class GestureDetectorWidget extends StatefulWidget {
  const GestureDetectorWidget({super.key});

  @override
  State<GestureDetectorWidget> createState() => _GestureDetectorWidgetState();
}

class _GestureDetectorWidgetState extends State<GestureDetectorWidget> {
  int TapTimes = 0 ;
  void _increaseNumber(){
    setState(() {
      TapTimes++ ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _increaseNumber,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Tapped $TapTimes times',style: TextStyle(fontSize: 30),),
              // GestureDetector(
              //   // onTap: (){
              //   //   setState(() {
              //   //     TapTimes++ ;
              //   //   });
              //   // },
              //   onTap: _increaseNumber,
              //   child: Container(
              //     padding: EdgeInsets.all(10),
              //     color: Colors.green[200],
              //     child: Text('TAP HERE',style: TextStyle(fontSize: 30),)),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
