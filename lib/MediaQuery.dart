import 'package:flutter/material.dart';

class MediaQueryWidget extends StatelessWidget {
  const MediaQueryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height ;
    double width = MediaQuery.of(context).size.width ;
    double ratio = MediaQuery.of(context).size.aspectRatio ;
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Height :' + height.toStringAsFixed(2),
                style: TextStyle(fontSize: 30),),
              Text('Width :' +width.toStringAsFixed(2),
                style: TextStyle(fontSize: 30),),
              Text('Aspect Ratio :' +ratio.toStringAsFixed(2),
                style: TextStyle(fontSize: 30),),
              Text(MediaQuery.of(context).orientation.toString(),
                style: TextStyle(fontSize: 30),)
            ],
          ),
        ),
      ),
    );
  }
}
