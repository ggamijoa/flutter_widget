import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SlideToWidget extends StatefulWidget {
  const SlideToWidget({super.key});

  @override
  State<SlideToWidget> createState() => _SlideToWidgetState();
}

class _SlideToWidgetState extends State<SlideToWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: SlideAction(
            borderRadius: 12,
            // elevation: 0,
            innerColor: Colors.deepPurple,
            outerColor: Colors.deepPurple[200],
            sliderButtonIcon: const Icon(Icons.lock_open,color: Colors.white,),
            text: 'Slide to Unlock',
            textStyle: TextStyle(color: Colors.white, fontSize: 24),
            sliderRotate: false,
            onSubmit: (){
              
            },
          ),
        ),
      ),
    );
  }
}
