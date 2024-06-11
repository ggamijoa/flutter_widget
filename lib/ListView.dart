import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  final List _posts = ['post1','post2','post3','post4','post5'] ;
  final List _story = ['story1','story2','story3','story4','story5','story6'] ;
  // const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          Container(
            height: 150,
            child: ListView.builder(
              itemCount: _story.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return circle(_story[index]) ;
              }),
          ),
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index){
                return square(_posts[index]) ;
              }),
          ),
        ],
      ),
      // body: ListView(
      //  // physics: NeverScrollableScrollPhysics(),
      //   children: [
      //     square(),
      //     square(),
      //     square(),
      //     square(),
      //     square(),
      //   ],
      // ),
    );
  }
}

Widget square(String title){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20.0),
    child: Container(
      height: 200,
      color: Colors.deepPurple[200],
      child: Center(child: Text(title, style: TextStyle(fontSize: 30),)),
    ),
  ) ;
}

Widget circle(String title){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 100, height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.pinkAccent,
      ),
      child: Center(child: Text(title, style: TextStyle(fontSize: 20, color: Colors.white),)),
    ),
  ) ;
}