import 'package:flutter/material.dart';

class ImageAssetWidget extends StatelessWidget {
  const ImageAssetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[500],
                ),
                width: 300,
                height: 300,
                child: Image.asset(
                  'images/ellipse_3.jpeg',
                  fit: BoxFit.fill, //fitWidth, fill, cover
                ),
              ),
            ),
            SizedBox(height: 100,),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[500],
                ),
                width: 300,
                height: 300,
                child: Image.asset(
                  'images/ellipse_3.jpeg',
                  fit: BoxFit.cover, //fitWidth, fill, cover
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
