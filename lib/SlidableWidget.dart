import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class SlidableWidget extends StatefulWidget {
  const SlidableWidget({super.key});

  @override
  State<SlidableWidget> createState() => _SlidableWidgetState();
}

class _SlidableWidgetState extends State<SlidableWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Slidable(
          startActionPane: ActionPane(
            motion: StretchMotion(),  //DrawerMotion, ScrollMotion,StrechMotion
            children: [
              SlidableAction(
                onPressed: ((context){

                }),
                icon: Icons.phone,
                backgroundColor: Colors.greenAccent,),
              SlidableAction(
                flex: 2,
                onPressed: ((context){

                }),
                icon: Icons.chat,
                backgroundColor: Colors.blueAccent,),
            ],
          ),
          endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                onPressed: ((context){

                }),
                icon: Icons.delete,
                backgroundColor: Colors.redAccent,),
            ],
          ),
          child: Container(
            color: Colors.grey[300],
            child: ListTile(
              title: Text('Choi Yer Ock'),
              subtitle: Text('010-2073-1628'),
              leading: Icon(Icons.person,size: 40,),
            ),
          ),
        ),
      ),
    );
  }
}
