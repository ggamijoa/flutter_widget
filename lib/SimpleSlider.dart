import 'package:flutter/material.dart';

class SimpleSliderWidget extends StatefulWidget {
  const SimpleSliderWidget({super.key});

  @override
  State<SimpleSliderWidget> createState() => _SimpleSliderWidgetState();
}

class _SimpleSliderWidgetState extends State<SimpleSliderWidget> {
  double _currentValue = 0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(_currentValue.toStringAsFixed(4),style: TextStyle(fontSize: 30),),
          Container(
            padding: EdgeInsets.all(16.0),
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 38, // 1cm에 해당하는 높이
                trackShape: RectangularSliderTrackShape(),
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 3.0),
              ),
              child: Slider(
                min: 0,
                max: 10,
               // divisions: 5,
                label: _currentValue.toString(),
                value: _currentValue,
                activeColor: Colors.blue,
                inactiveColor: Colors.blue[100],
                thumbColor: Colors.red,
                onChanged: (value){
                  setState(() {
                    _currentValue = value ;
                  });
                },),
            ),
          ),
        ],
      ),
    );

  }
}
