import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({super.key});

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  void _showDialog(){
    showDialog(
      context: context,
      builder: (context){
        return AlertDialog(//CupertinoAlertDialog
          backgroundColor: Colors.pink[300],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
          title: Text('Title'),
          content: Text('Content, more info'),
          actions: [
            MaterialButton(
              onPressed: (){},
              color: Colors.lightBlue[200],
              child: Text('OK'),
            ),
            MaterialButton(
              onPressed: (){
                Navigator.pop(context) ;
              },
              color: Colors.lightBlue[200],
              child: Text('CANCEL'),
            ),
          ],
        ) ;
      }
    ) ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Center(
        child: MaterialButton(
          onPressed: _showDialog,
          color: Colors.deepPurple[100],
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Show Dialog',style: TextStyle(fontSize: 30),),
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
