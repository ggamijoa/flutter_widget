import 'package:flutter/material.dart';
import 'package:widget_study/WheelScroll/Minutes.dart';

import 'WheelScroll/AmPm.dart';
import 'WheelScroll/Hours.dart';
import 'WheelScroll/Tile.dart';

class WheelScrollWidget extends StatefulWidget {
  const WheelScrollWidget({super.key});

  @override
  State<WheelScrollWidget> createState() => _WheelScrollWidgetState();
}

class _WheelScrollWidgetState extends State<WheelScrollWidget> {
  // int currentHour = 0 ;
  late FixedExtentScrollController _controller ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = FixedExtentScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              controller: _controller,
              // onSelectedItemChanged: (value){
              //   setState(() {
              //     currentHour = value ;
              //   });
              // },  controller를 대신 사용함
              itemExtent: 50,  //각item의 높이
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 13,
                  builder: (context, index){
                    return HoursWidget(hours: index);
                  }
              ),
            ),
          ),
          SizedBox(width: 10,),
          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(

              itemExtent: 50,  //각item의 높이
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 60,
                  builder: (context, index){
                    return MinutesWidget(mins: index);
                  }
              ),
            ),
          ),
          SizedBox(width: 10,),
          Container(
            width: 100,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,  //각item의 높이
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                  childCount: 2,
                  builder: (context, index){
                    if(index == 0){
                      return AmPmWidget(isItAm: true);
                    }else{
                      return AmPmWidget(isItAm: false);
                    }
                  }
              ),
            ),
          ),
        ],
      ),
    );
  }
}
