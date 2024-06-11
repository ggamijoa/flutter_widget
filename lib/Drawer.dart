import 'package:flutter/material.dart';
import 'package:widget_study/Drawer_Page/FirstPage.dart';

import 'Drawer_Page/SecondPage.dart';
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[200],
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text('LOGO',style: TextStyle(fontSize: 35),),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Page 1', style: TextStyle(fontSize: 20),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FirstPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Page 2', style: TextStyle(fontSize: 20),),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondPage()));
                },
              ),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(),
    );
  }
}
