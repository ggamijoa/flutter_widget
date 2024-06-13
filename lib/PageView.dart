import 'package:flutter/material.dart';
import 'package:widget_study/PageView/Post_1.dart';
import 'package:widget_study/PageView/Post_3.dart';

import 'PageView/Post_2.dart';

class PageViewWidget extends StatelessWidget {
  final _controller = PageController() ;
  final List<Widget> _pages = [
    Post_1(),
    Post_2(),
    Post_3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        scrollDirection: Axis.vertical,
        itemCount: _pages.length,
        itemBuilder: (context, index) {
          return _pages[index] ;
        },
      ),
    );
  }
}
