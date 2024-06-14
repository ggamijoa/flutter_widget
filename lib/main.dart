import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:widget_study/AlertDialog.dart';
import 'package:widget_study/AnimatedContainer.dart';
import 'package:widget_study/Container.dart';
import 'package:widget_study/DatePicker.dart';
import 'package:widget_study/Drawer.dart';
import 'package:widget_study/Expanded.dart';
import 'package:widget_study/GestureDetector.dart';
import 'package:widget_study/ListView.dart';
import 'package:widget_study/SimpleSlider.dart';
import 'package:widget_study/Timer.dart';

import 'AnimatedIcons.dart';
import 'BottomNavBar.dart';
import 'ColumnRow.dart';
import 'GridView.dart';
import 'ImageAsset.dart';
import 'MediaQuery.dart';
import 'PageView.dart';
import 'RichText.dart';
import 'RoundCorner.dart';
import 'Stack.dart';
import 'TabBar.dart';
import 'TextStyle.dart';
import 'UserInput.dart';

void main(){
  runApp(MyApp()) ;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ko', 'KR'),
      ],
      // DatePicker에 영향을 주기위해서
      theme: ThemeData(
      primaryColor: Colors.green, // 기본 색상 설정
      colorScheme: ColorScheme.light(
        primary: Colors.green, // 기본 색상
        onPrimary: Colors.white, // 기본 색상 위의 텍스트 색상
        surface: Colors.greenAccent, // 표면 색상
        onSurface: Colors.black, // 표면 색상 위의 텍스트 색상
      ),
    ),
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
            SizedBox(height: 2,),
            makeButton(context, 'Date Picker', DatePickerWidget()),
            makeButton(context, 'Simple Slider(ProgressBar)', SimpleSliderWidget()),
            makeButton(context, 'Animated Icons', AnimatedIconsWidget()),
            makeButton(context, 'UserInput(Keyboard)', UserInputWidget()),
            makeButton(context, 'StackWidget', StackWidget()),
            makeButton(context, 'PageView', PageViewWidget()),
            makeButton(context, 'Timer', TimerWidget()),
            makeButton(context, 'RichText(Lorem Ipsum)', RichTextWidget()),
            makeButton(context, 'TextStyle', TextStyleWidget()),
            makeButton(context, 'Alert Dialog', AlertDialogWidget()),
            makeButton(context, 'MediaQuery', MediaQueryWidget()),
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
