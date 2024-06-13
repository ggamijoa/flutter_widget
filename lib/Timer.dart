import 'dart:async';
import 'package:flutter/material.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  int timeLeft = 5 ;
  void _startCountDown(){
    Timer.periodic(Duration(seconds: 1), (timer){
      if(timeLeft > 0){
        setState(() {
          timeLeft-- ;
        });
      }else{
        timer.cancel() ;
      }
    }) ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(timeLeft == 0 ? 'DONE' : timeLeft.toString() ,style: TextStyle(fontSize: 50),),
            MaterialButton(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                onPressed: _startCountDown,
                child: Text('S T A R T',style: TextStyle(fontSize: 30,color: Colors.white),),
                color: Colors.deepPurple,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ],
        ),
      ),
    );
  }
}
