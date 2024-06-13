import 'package:flutter/material.dart';
import 'package:lorem_ipsum_generator/lorem_ipsum_generator.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    String loremStr = LoremIpsumGenerator.generate(words: 100) ;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 350,
            color: Colors.grey[300],
          ),
          // Row(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Text('Choi Yer Ock',style: TextStyle(fontWeight:FontWeight.bold),),
          //     ),
          //     Text(loremStr),
          //   ],
          // ),  =>Area arror
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 20),
                children: [
                  TextSpan(text: 'Choi Yer Ock ',style: TextStyle(fontWeight:FontWeight.bold),),
                  TextSpan(text: loremStr),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

