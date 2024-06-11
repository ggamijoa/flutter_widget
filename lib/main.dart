import 'package:flutter/material.dart';
import 'package:widget_study/AnimatedContainer.dart';
import 'package:widget_study/Container.dart';
import 'package:widget_study/Drawer.dart';
import 'package:widget_study/Expanded.dart';
import 'package:widget_study/GestureDetector.dart';
import 'package:widget_study/ListView.dart';

import 'BottomNavBar.dart';
import 'ColumnRow.dart';
import 'GridView.dart';
import 'ImageAsset.dart';
import 'RoundCorner.dart';
import 'TabBar.dart';

void main(){
  runApp(MyApp()) ;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title : 'Widget Study 2024.06.06',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Flutter Widget Study'),
        backgroundColor: Colors.grey[400],
        elevation: 0,  //flat style
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.phone),),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.share),),
        ],
      ),
      body: ListView(
          children: [
            makeButton(context, 'Animated Container', AnimatedContainerWidget()),
            makeButton(context, 'Tab Bar', TabBarWidget()),
            makeButton(context, 'Sliver App Bar(오류남)', SliverAppBar()),
            makeButton(context, 'Drawer(Left Slide)', DrawerWidget()),
            makeButton(context, 'Bottom Nav Bar', BottomNavBarWidget()),
            makeButton(context, 'Gesture Detector', GestureDetectorWidget()),
            makeButton(context, 'GridView', GridViewWidget()),
            makeButton(context, 'Image Asset1', ImageAssetWidget()),
            makeButton(context, 'Round Corners', RoundCorderWidget()),
            makeButton(context, 'ListView', ListViewWidget()),
            makeButton(context, 'Column & Row', ColumnRowWidget()),
            makeButton(context, 'Expanded (채우기)', ExpandedWidget()),
            makeButton(context, 'Container', ContainerWidget()),
          ],
        ),
    );
  }
}

Widget makeButton(BuildContext context, String text, Widget destination){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 2.0),
    child: ElevatedButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>destination)) ;
      },
      child: Text(text,style: TextStyle(fontSize: 20,color: Colors.white),),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightBlue,
        padding: EdgeInsets.symmetric(vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  ) ;
}


//flutter clean -> flutter pub get -> flutter run
