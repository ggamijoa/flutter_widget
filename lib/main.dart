import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:widget_study/WidgetMain.dart';


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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                makeButton(context, 'Widget', WidgetMain()),
                makeButton(context, '(EC2) \nSQL CRUD', null),
              ],
            ),
            Row(
              children: [
                makeButton(context, '(MsSQL) \nSQL CRUD', null),
                makeButton(context, 'Exit', WidgetMain()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget makeButton(BuildContext context, String text, Widget? destination){
  return Expanded(
    child: Container(
      height: 150,
      padding: EdgeInsets.symmetric(horizontal: 4.0,vertical: 4.0),
      child: ElevatedButton(
        onPressed: (){
          if(destination != null) {
            text == 'Exit' ?
            SystemNavigator.pop() :
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => destination));
          }
        },
        child: Text(text,style: TextStyle(fontSize: 30,color: Colors.white),),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlue,
          padding: EdgeInsets.symmetric(vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ),
  ) ;
}



//flutter clean -> flutter pub get -> flutter run
