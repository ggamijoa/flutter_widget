import 'package:flutter/material.dart';
class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.pink[100],
              alignment: Alignment(0.5,-0.75),
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pink[300],
                ),
              ),
            ),
            Container(
              alignment: Alignment(0.1,-0.3),
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.pink[400],
                ),
              ),
            ),
          ],
          // children: [
          //   Container(
          //     width: 300,
          //     height: 300,
          //     color: Colors.blue[200],
          //   ),
          //   Container(
          //     width: 200,
          //     height: 200,
          //     color: Colors.blue[400],
          //   ),
          //   Container(
          //     width: 100,
          //     height: 100,
          //     color: Colors.blue[600],
          //   ),
          // ],
        ),
      ),
    );
  }
}
