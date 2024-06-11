import 'package:flutter/material.dart';
import 'package:widget_study/Tabs/First_Tab.dart';
import 'package:widget_study/Tabs/Second_Tab.dart';
import 'package:widget_study/Tabs/Third_Tab.dart';
class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.deepPurple,
          title: Center(child: Text('T A B  B A R',style: TextStyle(fontSize: 30, color: Colors.black),)),
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home,
                  color: Colors.deepPurple,
                  size: 40,),
                ),
                Tab(
                  icon: Icon(Icons.settings,
                    color: Colors.deepPurple,
                    size: 40,),
                ),
                Tab(
                  icon: Icon(Icons.person,
                    color: Colors.deepPurple,
                    size: 40,),
                ),
              ]),
            Expanded(
              child: TabBarView(
                children: [
                  FirstTab(),
                  SecondTab(),
                  ThirdTab(),
                ]),
            ),
          ],
        ),
      ),
    );
  }
}
