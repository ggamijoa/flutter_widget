import 'package:flutter/material.dart';
import 'package:widget_study/BottomNavBar_Page/Email.dart';
import 'package:widget_study/BottomNavBar_Page/Home.dart';
import 'package:widget_study/BottomNavBar_Page/Message.dart';
import 'package:widget_study/BottomNavBar_Page/Setting.dart';

class BottomNavBarWidget extends StatefulWidget {
  const BottomNavBarWidget({super.key});

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectIndex = 0 ;
  final List<Widget> _pages = [
    HomePage(),
    MessagePage(),
    SettingPage(),
    EmailPage(),
  ];

  void _navigationBarClick(int index){
    setState(() {
      _selectIndex = index ;
      print('click = '+index.toString()) ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: _navigationBarClick,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Setting'),
          BottomNavigationBarItem(icon: Icon(Icons.email),label: 'Email'),
        ],
      ),
    );
  }
}
