import 'package:flutter/material.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({super.key});

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  DateTime _dateTime = DateTime.now() ;

  void _showDatePicker() async {
    await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2050),
        locale: const Locale('ko', 'KR'),
    ).then((value){
      setState(() {
        _dateTime = value! ;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(_dateTime.month.toString(),style: TextStyle(fontSize: 30),), //_dateTime.toString()
            MaterialButton(
              onPressed: (){_showDatePicker();},
              color: Colors.lightBlue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text('Choose Date',style: TextStyle(fontSize: 25, color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
