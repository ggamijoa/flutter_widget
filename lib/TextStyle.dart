import 'package:flutter/material.dart';

class TextStyleWidget extends StatelessWidget {
  const TextStyleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final pinkFont = TextStyle(
      fontSize: 20,
      color: Colors.pink,
      fontStyle: FontStyle.normal,
    );
    final greenLargeFont = TextStyle(
      fontSize: 40,
      color: Colors.green,
      fontStyle: FontStyle.normal,
    );

    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Text Widget Tutorial',
              style: TextStyle(
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[100]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('How to customise and style texts with flutter :D',
                style: pinkFont,
              ),
            ),
            Text('Another text widget',
              style: greenLargeFont,
            ),
          ],
        ),
      ),
    );
  }
}
