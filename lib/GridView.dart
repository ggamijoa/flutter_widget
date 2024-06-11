import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  final _data = ['data1','data2','data3','data4','data5'] ;
  // const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: _data.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                color: Colors.lightBlue,
                child: Center(child: Text(_data[index],style: TextStyle(fontSize: 20),)),
              ),
            );
          }),
      // body: GridView.count(
      //   crossAxisCount: 3,
      //   children: [
      //     myBox(),
      //     myBox(),
      //     myBox(),
      //     myBox(),
      //     myBox(),
      //   ],
      // ),
    );
  }
}

Widget myBox(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 50,
      height: 50,
      color: Colors.deepOrange,
    ),
  );
}
