import 'package:flutter/material.dart';

class TimePickerWidget extends StatefulWidget {

  const TimePickerWidget({super.key});

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  TimeOfDay _timeOfDay = TimeOfDay(hour: 8, minute: 30) ;

  void _showTimePicker(){
    showTimePicker(
        context: context,
        initialTime: TimeOfDay.now()).then((value){
          setState(() {
            _timeOfDay = value! ;
          });
    }) ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(_timeOfDay.format(context).toString(), style: TextStyle(fontSize: 50),),
            MaterialButton(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
              onPressed: (){
                _showTimePicker();
              },
              child: Text('PICK TIME',style: TextStyle(fontSize: 25, color: Colors.white),),
              color: Colors.lightBlue,
            ),
          ],
        ),
      ),
    );
  }
}
