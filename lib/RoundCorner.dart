import 'package:flutter/material.dart';

class RoundCorderWidget extends StatelessWidget {
  const RoundCorderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            ClipRRect(
              borderRadius: BorderRadius.circular(500),  //500 = circle
              child: Container(
                height: 300,
                width: 300,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 100,),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(10),
                color: Colors.pinkAccent,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
