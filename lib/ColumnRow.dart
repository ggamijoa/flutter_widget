import 'package:flutter/material.dart';

class ColumnRowWidget extends StatelessWidget {
  const ColumnRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(  //Row
        mainAxisAlignment: MainAxisAlignment.start, //start, center, end, spaceEvenly, spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // width: 100,
            height: 100,
            color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.pinkAccent,
            ),
          ),
          Container(
            // width: 100,
            height: 100,
            color: Colors.lightBlue,
            child: Row(
              children: [
                Expanded(
                  flex : 1,
                  child: Container(
                    color: Colors.white54,
                  )),
                Expanded(
                    flex : 1,
                    child: Container(
                      color: Colors.white70,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
