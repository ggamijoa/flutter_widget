import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double boxHeight = 100 ;
  double boxWidth = 100 ;
  var boxColor = Colors.blueGrey ;
  double boxX = 0 ;
  double boxY = 0 ;

  void _Growing(){
    setState(() {
      boxHeight <= 100 ? boxHeight = 300 : boxHeight =100 ;
      boxWidth <= 100 ? boxWidth = 300 : boxWidth =100 ;
    });
  }

  void _ChangeColor(){
    setState(() {
       boxColor == Colors.blueGrey ? boxColor = Colors.lightBlue : boxColor = Colors.blueGrey ;
    });
  }

  void _Moving(){
    setState(() {
      (boxY == 0) ? boxY = 0.7 : boxY = 0 ;
      boxX = 0 ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: AnimatedAlign(
              duration: Duration(seconds: 1),
              alignment: Alignment(boxX, boxY),
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                color: boxColor,
                width: boxWidth,
                height: boxHeight,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8,vertical: 30),
                    child: ElevatedButton(
                      onPressed: (){
                        _Growing() ;
                      },
                      child: Text('G R O W',style: TextStyle(fontSize: 19),),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, double.infinity),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.lightBlue,
                        foregroundColor: Colors.white
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8,vertical: 30),
                    child: ElevatedButton(
                      onPressed: (){
                        _ChangeColor() ;
                      },
                      child: Text('COLOR',style: TextStyle(fontSize: 19),),
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, double.infinity),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Colors.greenAccent,
                          foregroundColor: Colors.black,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8,vertical: 30),
                    child: ElevatedButton(
                      onPressed: (){
                        _Moving() ;
                      },
                      child: Text('M O V E',style: TextStyle(fontSize: 19),),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, double.infinity),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.pinkAccent,
                        foregroundColor: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),),
        ],
      ),

    );
  }
}
